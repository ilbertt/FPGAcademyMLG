import numpy as np
f=open("file.dat",'w')
f.write("0A\n053\n1\n2AB\n")
vec=np.zeros(1024)
for i in range(500,600):
    vec[i]=0.5

s=""
for i in range(len(vec)):
    s=s+str(vec[i])+"\t0.0\n"

f.write(s)
f.close()