import numpy as np
import matplotlib.pyplot as plt

f=open("out_file.txt")
s=f.read()
vec=s.split("\n")
im_data=[]
re_data=[]
for v in vec:
    a=v.split(" ")
    re_data.append(float(a[0]))
    im_data.append(float(a[1]))

im_data=np.array(im_data)
re_data=np.array(re_data)
data=im_data**2+re_data**2
plt.plot(data)
plt.show()