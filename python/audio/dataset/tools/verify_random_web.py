### play "num_random" random local wav keywords

import numpy as np
import matplotlib.pyplot as plt
import scipy.io.wavfile as wav
import sounddevice as sd
import time
import os
########
# our custom functions
import sys
sys.path.insert(1, '../utils')
import functions
########

#np.set_printoptions(threshold = sys.maxsize) #print the whole array

fs = 11025
num_random = 20 # number of random keywords
threshold = 10000

# load keywords in "array" from local "true_set" file
# list all .wav files from firebase storage
path="./../true_recs"
current_files=os.listdir(path) #list of keywords currently in local true_recs folder
current_files.sort()
### check 20 random keywords from true_set
rand_index = np.random.randint(0, len(current_files), num_random)	# generate 20 random indexes
print(rand_index)
## play and plot each random keyword
for kw_index in rand_index:
    f, kw = wav.read(path+"/"+current_files[kw_index])    # open desired wav
    # add data type in order to play the sound
    kw=np.array(kw, dtype='int16')
    # 
    print("#:", kw_index, "wav:", current_files[kw_index], ", len:", len(kw))
    functions.test(kw, f, threshold, "#: "+str(kw_index))
    
