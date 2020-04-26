import numpy as np
import matplotlib.pyplot as plt

f=open("../csim/build/result.dat")
s=f.read()
f.close()
vec=s.split("\n")
vec.pop()
data=[]
for v in vec:
    data.append(float(v))

data=np.fft.fftshift(data)
plt.plot(data)
plt.show()
