# play each keyword ready for training the neural net from local file "true_set.npy"

import numpy as np
import matplotlib.pyplot as plt
import sounddevice as sd
import time

#np.set_printoptions(threshold = sys.maxsize) #print the whole array

fs = 4096

# load keywords in "array" from local "true_set" file
array = np.load('./../arrays/true_set.npy')

# open file containing the index of the first keyword that hasn't been verified yet
index_file = open("last_keyword_index.txt","r+")
index = int(index_file.read())

# starts playing keywords from "index" in order not to play previously verified keywords
for i in range (index, len(array)):
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

# save the index after the last keyword verified
index_file.seek(0, 0)
index_file.truncate(0)
index_file.write("%d" % (len(array)))

index_file.close()