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
epochs = 10

t_setx, t_sety=np.load("./../dataset/arrays/dataset.npy", allow_pickle=True)

t_setx=np.vstack(t_setx).astype(np.float)
t_setx=t_setx.reshape((len(t_setx),1,1,-1))
t_sety=np.vstack(t_sety).astype(np.float)
t_sety=t_sety.reshape((len(t_sety),1,1,-1))

v_setx = t_setx[len(t_setx)-N:]
v_sety = t_sety[len(t_sety)-N:]

t_setx = t_setx[:len(t_setx)-N]
t_sety = t_sety[:len(t_sety)-N]

print(t_setx[0].shape)
print(t_sety[0].shape)

def custom_activation(x):
    return tf.nn.sigmoid(x,max_value=100)

model=keras.Sequential([
    keras.layers.Conv2D(16,1, input_shape=t_setx[0].shape),

	keras.layers.Dense(16,activation=tf.nn.sigmoid),

	keras.layers.Dense(8,activation=tf.nn.sigmoid),

	keras.layers.Dense(4,activation=tf.nn.sigmoid),

	keras.layers.Dense(2,activation=tf.nn.sigmoid),

	keras.layers.Dense(1, activation=tf.nn.sigmoid)
])
model.summary()
model.compile(optimizer=tf.optimizers.RMSprop(lr=0.01),loss="binary_crossentropy",metrics=['accuracy'])
#model.compile(optimizer=tf.optimizers.Adam(),loss="binary_crossentropy")

model.fit(x=t_setx, y=t_sety, validation_split= 0.3, epochs=epochs)
model.evaluate(v_setx, v_sety)

np.save("tensorflow_files/weights", np.array(model.get_weights()))
model.save("tensorflow_files/model.h5") #to open the model use: model=keras.models.load_model("model.h5")

print(model.predict([[v_setx[0]]]))
print(v_sety[0])

