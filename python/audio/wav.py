import scipy.io.wavfile as wav
import os
import numpy as np
os.system("gsutil cp -r gs://fpgacademy-mlg.appspot.com/true_recs/*.wav true_recs")
path="true_recs"
files=os.listdir(path)
samples=[]
for file in files:
	fs, sample= wav.read(path+"/"+file)
	sample=sample[0:len(sample)-len(sample)%4] #n_samples devono essere multipli di 4
	sample=sample.reshape([int(len(sample)/4),4])
	sample=np.ceil(np.array(sum(sample.T))/4)
	samples.append(sample)

samples=np.array(samples)
np.save("samples",samples)
