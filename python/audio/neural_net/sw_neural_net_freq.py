### uncomment the following lines if you have GPU but you want to use only CPU
#import os
#os.environ["CUDA_VISIBLE_DEVICES"]="-1"

import tensorflow as tf

### comment the following lines if you don't have GPU 
# from here
gpus= tf.config.experimental.list_physical_devices('GPU')
print("Num GPUs Available: ", len(gpus))
tf.config.experimental.set_memory_growth(gpus[0], True)
# to here

from tensorflow import keras
import numpy as np
from keras import backend as K
from keras import models

N = 100	# lenght of validation set
epochs = 10000

t_setx, t_sety=np.load("./../dataset/arrays/dataset.npy", allow_pickle=True)
t_setx=np.vstack(t_setx).astype(np.float)
l=len(t_setx[0])
t_setx=np.round(t_setx/((2**10)/np.abs(t_setx).max())) # mapped on 10 bit
t_setx=np.abs(np.fft.fft(t_setx))[:,int(l/2):]#[:,int(l*7/8):]

v_setx=t_setx[:N]
t_setx=t_setx[N:]
v_sety=t_sety[:N]
t_sety=t_sety[N:]
t_sety=np.vstack(t_sety).astype(np.float)
print(len(t_setx), t_setx[0].shape)
print(len(t_sety), t_sety[0].shape)

#def custom_activation(x):
    #return tf.nn.sigmoid(x,max_value=5000)

model=keras.Sequential([
    	#keras.layers.Conv1D(512,1, input_shape=t_setx[0].shape, activation=tf.nn.sigmoid),
	keras.layers.Flatten(input_shape=t_setx[0].shape),		
	keras.layers.Dense(16,activation=tf.nn.sigmoid),
	keras.layers.Dense(8,activation=tf.nn.sigmoid),
	keras.layers.Dense(4,activation=tf.nn.sigmoid),
	keras.layers.Dense(2,activation=tf.nn.sigmoid),
	keras.layers.Dense(1, activation=tf.nn.sigmoid)
])
model.summary()
model.compile(optimizer=keras.optimizers.SGD(lr=0.1),loss="binary_crossentropy",metrics=['accuracy'])
model.fit(x=t_setx, y=t_sety,validation_split=0.3, epochs=epochs, batch_size=64)

v_setx = np.asarray(v_setx).astype(np.float)
v_sety = np.asarray(v_sety).astype(np.float)
model.evaluate(v_setx, v_sety)

np.save("tensorflow_files/weights_freq", np.array(model.get_weights()))
model.save("tensorflow_files/model_freq.h5") #to open the model use: model=keras.models.load_model("model.h5")
print(model.predict([[v_setx[0]]]))
print(v_sety[0])