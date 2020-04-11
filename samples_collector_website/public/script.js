var rec_duration = 1000; //1000ms=1s
var num_sent = 0;       // number of keywords sent at each session

var audioBlob, audioUrl;

var gumStream; 						//stream from getUserMedia()
var rec; 							//Recorder.js object
var input; 							//MediaStreamAudioSourceNode we'll be recording

var AudioContext = window.AudioContext || window.webkitAudioContext;
var audioContext;

function startRec(){
    document.getElementById("rec_start").textContent="Attendi...";
    navigator.mediaDevices.getUserMedia({ audio: true, video: false })
    .then(stream => {
        audioContext = new AudioContext();
        gumStream = stream;
        input = audioContext.createMediaStreamSource(stream);

        rec = new Recorder(input,{numChannels:1}); //rec obj from Recorderjs

        rec.record(); //inizia rec

        document.getElementById("rec_start").style.display="none";
        document.getElementById("rec").style.display="block";

        document.getElementById("rec_delete").style.display="none";
        document.getElementById("listen").style.display="none";
        document.getElementById("rec_send").style.display="none";
        //document.getElementById("plot").style.display="none";

        setTimeout(() => { //stop rec dopo 3 secondi
            rec.stop();
            gumStream.getAudioTracks()[0].stop(); //stop microphone access
            rec.exportWAV(exportAudio);
            rec.getBuffer(printFFT);

            document.getElementById("rec_start").style.display="none";
            document.getElementById("rec").style.display="none";
            
            document.getElementById("rec_delete").style.display="block";
            document.getElementById("listen").style.display="block";
            document.getElementById("rec_send").style.display="block";
            document.getElementById("rec_send").textContent="Invia";
            document.getElementById("plot").style.display="block";
            
        }, rec_duration);
    })
    .catch(mediaErrorCallback);
}

function mediaErrorCallback(error){ //alert errori di navigator.mediaDevices callback
    alert(error);
}

function exportAudio(blob){
    audioBlob = blob;
    audioUrl = URL.createObjectURL(blob);
}

function printFFT(buffer){
    //console.log(buffer, buffer[0].length);

    var dataBuffer = buffer[0].slice(0,Math.pow(2,15));
    var frameBufferSize = dataBuffer.length;
    var bufferSize = frameBufferSize/2;

    var signal = new Float32Array(bufferSize);
    var peak = new Float32Array(bufferSize);

    var fft = new FFT(bufferSize, 44100);
    
    signal = DSP.getChannel(DSP.MIX, dataBuffer);

    // perform forward transform
    fft.forward(signal);
    
    // calculate peak values
    for ( var i = 0; i < bufferSize; i++ ) {
        fft.spectrum[i] *= -1 * Math.log((fft.bufferSize/2 - i) * (0.5/fft.bufferSize/2)) * fft.bufferSize; // equalize, attenuates low freqs and boosts highs
        
        if ( peak[i] < fft.spectrum[i] ) {
            peak[i] = fft.spectrum[i];
        } else {
            peak[i] *= 0.99; // peak slowly falls until a new peak is found
        }
    }

    //console.log(fft.spectrum);

    var x = []; for(i=1;i<=fft.spectrum.length;i++){ x.push(i);} //generate x axis values
    var data = [
        {
            x: x, 
            y: fft.spectrum, 
            type: 'scatter'
        }
    ];
    var layout = {
        xaxis: {
          autorange: true
        },
        yaxis: {
          autorange: true, 
          type: 'log'
        }
    };

    PLOT = document.getElementById('plot');
    Plotly.newPlot( PLOT, data, layout);
}

function listenRec(){ //riascolta
    const audio = new Audio(audioUrl);
    audio.play();
}

function sendRec(){ //invia
    document.getElementById("rec_send").textContent="Invio...";
    document.getElementById("plot").style.display="none";
    var metadata = {
        contentType: 'audio/wav',
    };

    var storageRef = firebase.storage().ref().child('true_recs/');

    var d = new Date();
    var audioName = d.getTime().toString() + ".wav"; //nome del file audio settato al timestamp

    storageRef.child(audioName).put(audioBlob, metadata).then(function(snapshot) { //carica file audio
        console.log('Uploaded blob!');
        
        num_sent++;
        document.getElementById("num_sent").textContent=num_sent;

        document.getElementById("rec_start").style.display="block";
        document.getElementById("rec_start").textContent="Registra";
        document.getElementById("rec").style.display="none";

        document.getElementById("rec_delete").style.display="none";
        document.getElementById("listen").style.display="none";
        document.getElementById("rec_send").style.display="none";
        document.getElementById("rec_send").textContent="Invia";
    });
}

function deleteRec(){ //riparti da capo
    document.getElementById("rec_start").style.display="block";
    document.getElementById("rec_start").textContent="Registra";
    document.getElementById("rec").style.display="none";
    
    document.getElementById("rec_delete").style.display="none";
    document.getElementById("listen").style.display="none";
    document.getElementById("rec_send").style.display="none";
    document.getElementById("rec_send").textContent="Invia";
    document.getElementById("plot").style.display="none";
}

function example(){ //ascolta esempio
    const audio_example = new Audio('./new_sample.wav');
    audio_example.play();
}

window.onerror = function(msg, url, linenumber) { //alert errori javascript
    alert('Error message: '+msg+'\nURL: '+url+'\nLine Number: '+linenumber);
    return true;
}