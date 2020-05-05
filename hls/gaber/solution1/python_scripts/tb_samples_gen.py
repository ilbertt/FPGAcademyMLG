import numpy as np
import matplotlib.pyplot as plt
f=open("../stimulus.dat",'w')
vec=np.zeros(2048)
x=int(input("sample number:"))
t_setx, t_sety=np.load("../../../../python/audio/dataset/arrys/dataset.npy", allow_pickle=True)
t_setx=np.vstack(t_setx).astype(np.float)
t_sety=np.vstack(t_sety).astype(np.float)
t_setx=np.round(t_setx*((2**9)/np.abs(t_setx).max())) # mapped on 10 bit
vec=t_setx[x]
f.write(str(int(t_sety[x]))+"\n")
"""vec1=np.abs(np.fft.ifft(t_setx[x]))**2
vec1=vec1[:512]
print(vec1)"""
s=""
for i in range(len(vec)):
    s+=str(int(vec[i]))+"\n"

f.write(s)
f.close()
"""vec=np.abs(np.fft.fftshift(np.fft.ifft(t_setx[0])))**2
plt.plot(vec)
plt.show()"""

