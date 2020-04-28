import sounddevice as sd
import time
import matplotlib.pyplot as plt 
import numpy as np
from scipy import signal as sg

# resizes "sample" to "lenght" starting from index of the first element above "threshold"
def threshold_resize(sample, threshold, length, goBackSize):
	arr=list(map(lambda a: True if a>threshold else False, sample))
	th_index=arr.index(True)	# first point above threshold is at thi index
	if (th_index<len(sample)-length):	# if "th_index" is near the end of sample
		start = th_index-goBackSize
		if(start >= 0):	# if "th_index" is after "goBackSize"
			sample = sample[start:start+length]
		else:
			sample = sample[0:length]
	else:
		sample = sample[th_index:]
		padding = np.zeros(length-len(sample))	# 0 padding to meet desired "length" of sample
		sample = np.append(sample,padding)
	return sample

# change sample rate of "sample" from its "f" to new "fs"
def resample(sample, f, fs):
	sample=sg.resample(sample, int(len(sample)/(f/fs)))
	return sample

# normalize "keyword" to "maxScale" scale
# return keyword and index of maximum peak
def normalize(keyword, maxScale):
	maxPeak = np.amax(np.absolute(keyword))	# maximum peak of keyword
	if(maxPeak != 0):
		keyword = keyword*(maxScale/maxPeak) # normalize using maxScale proportion

	return keyword

# test keyword in three steps:
# - play keyword
# - show samples array
# - show FFT
def test(keyword, f, threshold, title):
	samples = keyword.size

	# play .wav file
	keyword = np.array(keyword, dtype='int16')
	sd.play(keyword, f)

	# plot .wav file
	plt.subplot(211)
	plt.xlabel("sample")
	plt.ylabel("sound amplitude")
	plt.plot(keyword)
	plt.plot(np.zeros(samples)+threshold, 'k-', lw=2)	# threshold line 
	plt.title(title)
	plt.grid()
	# plot fft
	KEY = np.fft.ifft(keyword)
	#KEY = KEY[:int(len(KEY)/2)]
	timestep = 1/f
	freq = np.fft.fftfreq(samples, d=timestep)
	#print(freq)
	#freq = freq[:int(len(freq)/2)]
	print(freq)
	plt.subplot(212)
	plt.xlabel("frequency [Hz]")
	plt.ylabel("spectral density")
	plt.plot(freq, np.absolute(KEY))
	plt.yscale("log")
	plt.show()
	
	time.sleep(2)
	return