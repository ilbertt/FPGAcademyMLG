### play "num_random" random keywords

import numpy as np
import matplotlib.pyplot as plt
import sounddevice as sd
import time
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
true_set = np.load('./../arrays/true_set.npy')

### check 20 random keywords from true_set
rand_index = np.random.randint(0, len(true_set), num_random)	# generate 20 random indexes
## play and plot each random keyword
for kw_index in rand_index:
    kw = np.array(true_set[kw_index], dtype='int16')
    sd.play(kw, fs)
    functions.test(kw, fs, threshold, "#: "+str(kw_index))
    print("#:", kw_index, ", len:", len(kw))
