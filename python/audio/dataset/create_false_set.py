
import numpy as np 
import scipy.io.wavfile as wav
import os
import time
import sounddevice as sd
########
# our custom functions
import sys
sys.path.insert(1, './utils')
import functions
########

sample_len = 22000  # length of each sample cut from "song"
fs = 44100			# sample rate
maxScale = 30000	# normalizing scale

false_set = []	# list of false keywords
path="false_recs"

false_recs = os.listdir(path) 	# list of songs currently in local false_recs folder
counter = 0
for file in false_recs:
	# split each .wav file in .npy arrays of equal length
	f, song = wav.read(path+"/"+file)
	song = song[:,0]
	song = song[:song.size-song.size%sample_len]
	song = np.reshape(song, (-1, sample_len))
	# resample and normalize each .npy array
	for sample in song:
		sample = functions.resample(sample, f, fs)		# resample sample to 44100 hz
		sample = functions.normalize(sample, maxScale)	# normalize
		sample = functions.resample(sample, fs, fs/4)		# resample sample to 11025 hz

		# # play .wav file
		# sample = np.array(sample, dtype='int16')
		# sd.play(sample, fs/4)
		# time.sleep(0.55)
		if(sample.any()):
			false_set.append(sample)	# append sample to list
			counter = counter+1

print('\nFalse keyword generated:',counter)

false_set = np.array(false_set)
# save all .npy arrays ready for training in "false_set" 
np.save("arrays/false_set", false_set)

check = np.load('arrays/false_set.npy')	# load the saved array to check
print('\nFALSE_SET saved. Lenght:', len(check))	# log
print('\n')