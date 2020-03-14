import numpy as np 
import matplotlib.pyplot as plt 
import scipy.io.wavfile as wav
import functions	# our custom functions from functions.py

threshold = 10000	# set threshold for keyword resize [wav sample amplitude]
fs = 44100			# sample rate
length = 22000		# significant number of samples for each keyword
maxScale = 30000	# normalizing scale
goBackSize = 2000	# significant interval before and after the maximum peak

# list all .wav files from firebase storage
path="true_recs"

# choose the .wav file that you want to test from the list and assign it to "file"
file = input(".wav name (with extension): ")	# get name of wav file from user
f, keyword = wav.read(path+"/"+file) 

# test original .wav file
functions.test(keyword, f, threshold, "original")

# test "keyword" after each function
keyword = functions.resample(keyword, f, fs)	# resample keyword to 44100 hz
functions.test(keyword, fs, threshold, "res_44000")

keyword = functions.normalize(keyword, maxScale) # normalize
functions.test(keyword, fs, threshold, "normalized")

keyword = functions.threshold_resize(keyword, threshold, length, goBackSize)	# keep only significant samples of the keyword
functions.test(keyword, fs, threshold, "threshold")

keyword = functions.resample(keyword, fs, fs/4)		# resample keyword to 11025 hz
functions.test(keyword, fs/4, threshold, "res_11000")