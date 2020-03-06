import scipy.io.wavfile as wav
import os
import numpy as np
import functions

s_factor=4
thresold=1000
length=5500
path="true_recs"
#if(os.system("ls "+path)!=0):
	#os.system("mkdir "+path)

files=os.popen("gsutil ls gs://fpgacademy-mlg.appspot.com/true_recs/").read()
files=files.replace("gs://fpgacademy-mlg.appspot.com/true_recs/","")
files=files.split('\n')
files.remove('')
files.remove('')
ex_files=os.listdir(path)
if(not os.path.isfile('filename.txt')):
	samples=[]
else:
	samples=list(np.load("samples.npy"))

for file in files:
	if(not(file in ex_files)):
		os.popen("gsutil cp -r gs://fpgacademy-mlg.appspot.com/true_recs/"+file+" "+path).read()
		fs, sample= wav.read(path+"/"+file)
		sample=functions.resample(sample, s_factor)
		sample=functions.thresold_resize(sample , thresold, length)
		if(sample!=0):
			samples.append(sample)



samples=np.array(samples)
np.save("samples",samples)
