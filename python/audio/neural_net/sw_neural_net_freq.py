import tensorflow as tf
from tensorflow import keras
import numpy as np
from keras import backend as K
from keras import models

n=100
t_setx, t_sety=np.load("dataset.npy", allow_pickle=True)
t_setx=np.vstack(t_setx).astype(np.float)
l=len(t_setx[0])
t_setx=np.round(t_setx/((2**10)/np.abs(t_setx).max()))
t_setx=np.abs(np.fft.fft(t_setx))[:,int(l*7/8):]
#t_setx=np.abs(np.fft.fftshift(np.fft.fft(t_setx))[:,0:int(l/2)])
v_setx=t_setx[:n]
t_setx=t_setx[n:]
v_sety=t_sety[:n]
t_sety=t_sety[n:]
t_sety=np.vstack(t_sety).astype(np.float)
print(t_setx[0].shape)
print(t_sety[0].shape)

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
model.fit(x=t_setx, y=t_sety,validation_split=0.3, epochs=10, batch_size=64)
model.evaluate(v_setx, v_sety)
np.save("weights", np.array(model.get_weights()))
#layer_outputs = [layer.output for layer in model.layers]
#activation_model = models.Model(inputs=model.input, outputs=layer_outputs)
#activations = activation_model.predict(t_setx[0])
print(model.predict([[t_setx[0]]]))
print(t_sety[0])
