import numpy as np
from scipy import signal as sg

# resizes "sample" to "lenght" starting from index of the first element above "threshold"
def threshold_resize(sample, threshold, length):
	arr=list(map(lambda a: True if a>threshold else False, sample))
	th_index=arr.index(True)
	if (th_index<len(sample)-length):
		sample=sample[th_index:th_index+length]
		return sample
	else:
		return [0]

#change sample rate of "sample" from its "f" to new "fs"
def resample(sample, f, fs):
	sample=sg.resample(sample, int(len(sample)/(f/fs)))
	return sample
