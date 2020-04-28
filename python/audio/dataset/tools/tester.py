import numpy as np 
import matplotlib.pyplot as plt 
import scipy.io.wavfile as wav
import os
########
# our custom functions
import sys
sys.path.insert(1, '../utils')
import functions # pylint: disable=import-error
########

threshold = 10000	# set threshold for keyword resize [wav sample amplitude]
fs = 44100			# sample rate
f_final = 4096      # because we need 2048 samples
length = 22050		# significant number of samples for each keyword
maxScale = 30000	# normalizing scale
goBackSize = 2000	# significant interval before and after the maximum peak

# list all .wav files from firebase storage
path="./../true_recs"
current_files=os.listdir(path) #list of keywords currently in local true_recs folder
current_files.sort()

# choose the .wav file or the index that you want to test from the list and assign it to "file"
file = input(".wav name with extension (leave blank if you don't know): ")	# get name of wav file from user
if(file==''):   # don't know the keyword file name, check for keyword index
    index = int(input("number of the keyword: "))  # get the index of keyword from user
    file = current_files[index]
    print('\n You selected keyword wav:', file)
else:
    index = current_files.index(file)   # index of the wav file selected
    print('\n You selected keyword index:', index)

f, keyword = wav.read(path+"/"+file)    # open desired wav

# test original .wav file
functions.test(keyword, f, threshold, "original")

# test "keyword" after each function
keyword = functions.resample(keyword, f, fs)	# resample keyword to 44100 hz
functions.test(keyword, fs, threshold, "resampling_44100")

keyword = functions.normalize(keyword, maxScale) # normalize
functions.test(keyword, fs, threshold, "normalized")

keyword = functions.threshold_resize(keyword, threshold, length, goBackSize)	# keep only significant samples of the keyword
functions.test(keyword, fs, threshold, "threshold")

keyword = functions.resample(keyword, fs, f_final)		# resample keyword to 11025 hz
functions.test(keyword, f_final, threshold, "resampling_4096")