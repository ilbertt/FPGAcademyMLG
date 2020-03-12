import scipy.io.wavfile as wav
import os
import numpy as np
import functions	# our custom functions from functions.py

threshold = 1000	# set threshold for keyword resize [wav sample amplitude]
fs = 44100			# sample rate
length = 22000		# significant number of samples for each keyword

#### download all .wav files from firebase bucket into true_recs local folder if not already in true_recs directory
path="true_recs"
current_files=os.listdir(path) #list of keywords currently in local true_recs folder

# list files from Firebase bucket
fb_files=os.popen("gsutil ls gs://fpgacademy-mlg.appspot.com/true_recs/").read()
fb_files=fb_files.replace("gs://fpgacademy-mlg.appspot.com/true_recs/","")
fb_files=fb_files.split('\n')
fb_files.remove('')
fb_files.remove('')

#check if there are new keywords to be downloaded from Firebase
for file in fb_files:
	if(not(file in current_files)):
		os.popen("gsutil cp -r gs://fpgacademy-mlg.appspot.com/true_recs/"+file+" "+path).read()

#check if there are keywords to be deleted in local true_recs folder
for file in current_files:
	if(not (file in fb_files)):
		os.remove(path+"/"+file)

files=os.listdir(path)
true_set = []	# list of keywords
for file in files:
	f, keyword = wav.read(path+"/"+file) 
	keyword = functions.resample(keyword, f, fs)	# resample keyword to 44100 hz
	keyword = functions.threshold_resize(keyword, threshold, length)	# keep only significant samples of the keyword
	if len(keyword) != 1:	# threshold_resize returns array [0] if keyword is not valid
		keyword = functions.resample(keyword, fs, fs/4)		# resample keyword to 11025 hz
	true_set.append(keyword)	# append keywords to list

true_set = np.array(true_set)
np.save("true_set", true_set)
