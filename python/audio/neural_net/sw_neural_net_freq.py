### uncomment the following lines if you have GPU but you want to use only CPU
import os
os.environ["CUDA_VISIBLE_DEVICES"]="-1"

import tensorflow as tf

### comment the following lines if you don't have GPU 
# from here
#gpus= tf.config.experimental.list_physical_devices('GPU')
#print("Num GPUs Available: ", len(gpus))
#tf.config.experimental.set_memory_growth(gpus[0], True)
# to here

from tensorflow import keras
import numpy as np
from keras import backend as K
from keras import models

N = 100	# lenght of validation set
epochs = 1000

fs = 4096

t_setx, t_sety=np.load("/kaggle/input/dataset-2048/dataset.npy", allow_pickle=True)

l=len(t_setx[0])
print(l)

t_setx=np.fft.fft(np.vstack(t_setx).astype(np.intc))
t_setx=t_setx[:,:int(l/2)]						# only one half of FFT
t_setx=np.absolute(t_setx)

# timestep = 1/fs
# freq = np.fft.fftfreq(l, d=timestep)
# freq = freq[:int(len(freq)/2)]

t_setx=np.vstack(t_setx).astype(np.float)
t_setx=t_setx**2								# squared because is simplier on FPGA
t_setx=np.round(t_setx/((2**10)/t_setx.max()))  # normalized on 2^10 (10 bit on FPGA)

# i=1024

# print(len(t_setx[i]),t_sety[i])
# plt.xlabel("frequency [Hz]")
# plt.ylabel("spectral density")
# plt.plot(freq, t_setx[i])
# plt.yscale("log")
# plt.show()

v_setx=t_setx[:N]
t_setx=t_setx[N:]
v_sety=t_sety[:N]
t_sety=t_sety[N:]

t_sety=np.vstack(t_sety).astype(np.float)

print(len(t_setx), t_setx[0].shape)
print(len(t_sety), t_sety[0].shape)

model=keras.Sequential([
    	#keras.layers.Conv1D(512,1, input_shape=t_setx[0].shape, activation=tf.nn.sigmoid),
	keras.layers.Flatten(input_shape=t_setx[0].shape),		
	keras.layers.Dense(16,activation=tf.nn.sigmoid),
	#keras.layers.Dropout(0.2),
	keras.layers.Dense(8,activation=tf.nn.sigmoid),
	#keras.layers.Dropout(0.1),
	keras.layers.Dense(4,activation=tf.nn.sigmoid),
	keras.layers.Dense(2,activation=tf.nn.sigmoid),
	keras.layers.Dense(1, activation=tf.nn.sigmoid)
])
model.summary()

model.compile(optimizer=keras.optimizers.SGD(lr=0.3),loss="binary_crossentropy",metrics=['binary_accuracy'])
model.fit(x=t_setx, y=t_sety,validation_split=0.2, epochs=epochs, batch_size=32)

v_setx = np.asarray(v_setx).astype(np.float)
v_sety = np.asarray(v_sety).astype(np.float)
results = model.evaluate(v_setx, v_sety, batch_size=86)
print('test loss, test acc:', results)

np.save("tensorflow_files/weights_freq", np.array(model.get_weights()))
model.save("tensorflow_files/model_freq.h5") #to open the model use: model=keras.models.load_model("model.h5")

for i in range(0,len(v_setx)):	# predict on v_set array
	print(model.predict([[v_setx[i]]]), v_sety[i])