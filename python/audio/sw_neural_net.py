import tensorflow as tf
from tensorflow import keras
import numpy as np
from keras import backend as K
from keras import models

t_setx, t_sety=np.load("dataset.npy", allow_pickle=True)
t_setx=np.vstack(t_setx).astype(np.float)
t_setx=t_setx.reshape((len(t_setx),1,1,-1))
t_sety=np.vstack(t_sety).astype(np.float)
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
model.compile(optimizer=tf.optimizers.Adam(),loss="binary_crossentropy")
model.fit(x=t_setx, y=t_sety, epochs=100)
np.save("weights", np.array(model.get_weights()))
#layer_outputs = [layer.output for layer in model.layers]
#activation_model = models.Model(inputs=model.input, outputs=layer_outputs)
#activations = activation_model.predict(t_setx[0])
model.save("model.h5") #to open the model use: model=keras.models.load_model("model.h5")
print(model.predict([[t_setx[0]]]))
print(t_sety[0])

