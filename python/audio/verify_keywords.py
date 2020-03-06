#this program downloads all .wav files from firebase bucket
#and plays each one printing infos

import scipy.io.wavfile as wav
import os
import numpy as np
import matplotlib.pyplot as plt
import sounddevice as sd
import sys
import time

# np.set_printoptions(threshold = sys.maxsize) #print the whole array


# download all .wav files from firebase bucket into true_recs local folder
os.popen("gsutil cp -r gs://fpgacademy-mlg.appspot.com/true_recs/*.wav true_recs").read()

path="true_recs"
files=os.listdir(path)

print("number of keywords:", len(files))
print("\n")

for file in files:
	fs, sample = wav.read(path+"/"+file) 
	print("file name:", file)
	print("sample array:", sample)
	print("total number of samples:", sample.size)
	print("sample rate:", fs)
	print("\n")

	# play each keyword in the firebase bucket every 2 seconds 
	sd.play(sample, fs)
	time.sleep(2)	

	## uncomment to see the fourier transform
	# SAMPLE = np.fft.fft(sample)
	# timestep = 1/fs
	# freq = np.fft.fftfreq(sample.size, d=timestep)
	# plt.plot(freq, np.abs(SAMPLE)) 
	# plt.title(file)
	# plt.yscale("log")
	# plt.show()
