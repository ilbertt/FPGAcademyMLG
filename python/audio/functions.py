import numpy as np
from scipy import signal as sg

"""def resample(sample, s_factor):
	size=len(sample)
	sample=sample[0:size-size%s_factor] #n_samples devono essere multipli di s_factor
	sample=sample.reshape([int(size/s_factor),s_factor])
	sample=np.ceil(np.array(sum(sample.T))/s_factor)
	return sample"""

def thresold_resize(sample,thresold, length):
	arr=list(map(lambda a: True if a>thresold else False, sample))
	th_index=arr.index(True)
	if (th_index<len(sample)-lenght):
		sample=sample[th_index:th_index+length]
		return sample
	else:
		return 0

def resample(sample, f, fs):
	sample=sg.resample(sample, int(len(sample)/(f/fs)))
	return sample
