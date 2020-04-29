import numpy as np
net_weights=np.load("weights_freq.npy", allow_pickle=True)
f_c=open("../mylib.c",'w')
f_h=open("../mylib.h",'w')
f_c.write("#include \"mylib.h\"\n")
f_h.write("#ifndef MYLIB_H\n#define MYLIB_H\n#define X 1024\n")
i=0
s="#define N "+str(len(net_weights[0]))+"\n"
for layer in net_weights:
    if(i%2==0 and i!=0):
        s+="#define N"+str(int(i/2))+" "+str(len(layer))+"\n"

    i+=1
    
f_h.write(s)        
i=0
for layer in net_weights:
    if(i%2==0):
        layer=layer.T
        s="const float w"+str(int(i/2)+1)+"[] ={\n"
        for neuron in layer:
            s+="\t"
            for w in neuron:
                s+=str(w).replace('e','E')+", "
                
            s+="\n"
            
        s=s[:-3]
        s+="\n\t};\n"
        f_h.write("extern const float w"+str(int(i/2)+1)+"[];\n")
        f_c.write(s)
    else:
        s="const float b"+str(int(i/2)+1)+"[] ={\n"
        for b in layer:
            s+=str(b).replace('e','E')+", "

        s=s[:-2]
        s+="\n\t};\n"
        f_h.write("extern const float b"+str(int(i/2)+1)+"[];\n")
        f_c.write(s)
    i+=1

f_h.write("#endif")
f_c.close()
f_h.close()
