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


#### download all .wav files from firebase bucket into true_recs local folder if not already in true_recs directory
path="true_recs"
current_files=os.listdir(path) #list of keywords currently in local true_recs folder

# list files from Firebase bucket
fb_files=os.popen("gsutil ls gs://fpgacademy-mlg.appspot.com/true_recs/").read()
fb_files=fb_files.replace("gs://fpgacademy-mlg.appspot.com/true_recs/","")
fb_files=fb_files.split('\n')
fb_files.remove('')
fb_files.remove('')
print("Number of Firebase keywords:",len(fb_files))

#check if there are new keywords to be downloaded from Firebase
for file in fb_files:
	if(not(file in current_files)):
		os.popen("gsutil cp -r gs://fpgacademy-mlg.appspot.com/true_recs/"+file+" "+path).read()

#check if there are keywords to be deleted in local true_recs folder
for file in current_files:
	if(not (file in fb_files)):
		os.remove(path+"/"+file)

files=os.listdir(path) #new list of files

print("Number of local keywords:", len(files))
print("\n")

for file in files:
	fs, sample = wav.read(path+"/"+file) 
	print("file name:", file)
	print("sample array:", sample)
	print("total number of samples:", sample.size)
	print("sample rate:", fs)
	print("\n")
	# add data type in order to play the sound
	sample=np.array(sample, dtype='int16')
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
