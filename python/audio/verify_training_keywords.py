# play each keyword ready for training the neural net from local file "true_set.npy"

import numpy as np
import matplotlib.pyplot as plt
import sounddevice as sd
import time

#np.set_printoptions(threshold = sys.maxsize) #print the whole array

fs = 11025

# load keywords in "array" from local "true_set" file
array = np.load('true_set.npy')

for i in range (0, len(array)):
	keyword = array[i]
	print(i)
	# add data type in order to play the sound
	keyword=np.array(keyword, dtype='int16')
	sd.play(keyword, fs)
	time.sleep(2)	
	## uncomment to see the fourier transform
	# KEY = np.fft.fft(keyword)
	# timestep = 1/fs
	# freq = np.fft.fftfreq(keyword.size, d=timestep)
	# plt.plot(freq, np.abs(KEY)) 
	# plt.title(i)
	# plt.yscale("log")
	# plt.show()
