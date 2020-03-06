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

        setTimeout(() => { //stop rec dopo 3 secondi
            rec.stop();
            gumStream.getAudioTracks()[0].stop(); //stop microphone access
            rec.exportWAV(exportAudio);

            document.getElementById("rec_start").style.display="none";
            document.getElementById("rec").style.display="none";
            
            document.getElementById("rec_delete").style.display="block";
            document.getElementById("listen").style.display="block";
            document.getElementById("rec_send").style.display="block";
        }, 3000);
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

function listenRec(){ //riascolta
    const audio = new Audio(audioUrl);
    audio.play();
}

function sendRec(){ //invia
    var metadata = {
        contentType: 'audio/wav',
    };

    var storageRef = firebase.storage().ref().child('true_recs/');

    var d = new Date();
    var audioName = d.getTime().toString() + ".wav"; //nome del file audio settato al timestamp

    storageRef.child(audioName).put(audioBlob, metadata).then(function(snapshot) { //carica file audio
        console.log('Uploaded blob!');

        document.getElementById("rec_start").style.display="block";
        document.getElementById("rec_start").textContent="Registra";
        document.getElementById("rec").style.display="none";

        document.getElementById("rec_delete").style.display="none";
        document.getElementById("listen").style.display="none";
        document.getElementById("rec_send").style.display="none";
    });
}

function deleteRec(){ //riparti da capo
    document.getElementById("rec_start").style.display="block";
    document.getElementById("rec_start").textContent="Registra";
    document.getElementById("rec").style.display="none";
    
    document.getElementById("rec_delete").style.display="none";
    document.getElementById("listen").style.display="none";
    document.getElementById("rec_send").style.display="none";
}

function example(){ //ascolta esempio
    const audio_example = new Audio('./sample.wav');
    audio_example.play();
}

window.onerror = function(msg, url, linenumber) { //alert errori javascript
    alert('Error message: '+msg+'\nURL: '+url+'\nLine Number: '+linenumber);
    return true;
}