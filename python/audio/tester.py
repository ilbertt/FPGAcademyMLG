
import numpy as np 
import matplotlib.pyplot as plt 
import os
import scipy.io.wavfile as wav
import sounddevice as sd
import time
import functions	# our custom functions from functions.py

def test(keyword, f):
	samples = keyword.size
	# plot .wav file
	x = np.linspace(0, samples - 1, samples) 
	plt.subplot(211)
	plt.xlabel("sample")
	plt.ylabel("sound amplitude")
	plt.plot(x, keyword)
	plt.plot([0, samples], [threshold, threshold], 'k-', lw=2)	# threshold line 
	# plot fft
	KEY = np.fft.fft(keyword)
	timestep = 1/f
	freq = np.fft.fftfreq(samples, d=timestep)
	plt.subplot(212)
	plt.xlabel("frequency [Hz]")
	plt.ylabel("spectral density")
	plt.plot(freq, np.abs(KEY))
	plt.yscale("log")
	plt.show()
	# play .wav file
	keyword = np.array(keyword, dtype='int16')
	sd.play(keyword, f)
	time.sleep(2)
	return

threshold = 1000	# set threshold for keyword resize [wav sample amplitude]
fs = 44100			# sample rate
length = 22000		# significant number of samples for each keyword

# list all .wav files from firebase storage
path="true_recs"
fb_files=os.popen("gsutil ls gs://fpgacademy-mlg.appspot.com/true_recs/").read()
print(fb_files)

# choose the .wav file that you want to test from the list and assign it to "file"
file = "1583926696809.wav"	# "name of the .wav file"
os.popen("gsutil cp -r gs://fpgacademy-mlg.appspot.com/true_recs/"+file+" "+path).read()
f, keyword = wav.read(path+"/"+file) 

# test original .wav file
test(keyword, f)

# test "keyword" after each function
keyword = functions.resample(keyword, f, fs)	# resample keyword to 44100 hz
test(keyword, fs)

keyword = functions.threshold_resize(keyword, threshold, length)	# keep only significant samples of the keyword
test(keyword, fs)

if len(keyword) != 1:	# threshold_resize returns array [0] if keyword is not valid
	keyword = functions.resample(keyword, fs, fs/4)		# resample keyword to 11025 hz
	test(keyword, fs/4)