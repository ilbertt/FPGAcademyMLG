import numpy as np
f=open("../.tcls/stimulus.dat",'w')
vec=np.zeros(2048)
for i in range(500,600):
    vec[i]=0.5

s=""
for i in range(len(vec)):
    s=s+str(vec[i])+"\n"

f.write(s)
f.close()
