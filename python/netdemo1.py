import tensorflow as tf
from tensorflow import keras
import numpy as np
from keras import backend as K

def custom_activation(x):
    return (K.sigmoid(x/183) * 100)

model=keras.Sequential([
	keras.layers.Dense(20,activation=custom_activation, input_shape=[20]),
	keras.layers.Dense(10,activation=custom_activation),
	keras.layers.Dense(10,activation=custom_activation),
	keras.layers.Dense(5,activation=custom_activation),
	keras.layers.Dense(2,activation=custom_activation),
	keras.layers.Dense(1, activation=tf.nn.sigmoid)
])
model.compile(optimizer=tf.optimizers.Adam(),loss="binary_crossentropy")
t_set_x=[]
t_set_y=[]
m=100000
for _ in range(0,m):
	a=np.random.randint(0,50,7)
	i=np.random.randint(0,2)
	if (i==1):
		a = np.append(a, [10, 15, 17])
	else:
		a = np.append(a, np.random.randint(0, 50, 3))

	a=np.append(a, np.random.randint(0, 50, 10))
	t_set_x.append(a)
	t_set_y.append(i)

v_set_x=[]
v_set_y=[]
m=10000
for _ in range(0,m):
	a=np.random.randint(0,50,7)
	i=np.random.randint(0,2)
	if (i==1):
		a = np.append(a, [10, 15, 17])
	else:
		a = np.append(a, np.random.randint(0, 50, 3))

	a=np.append(a, np.random.randint(0, 50, 10))
	v_set_x.append(a)
	v_set_y.append(i)

model.fit(np.array(t_set_x), np.array(t_set_y), epochs=100)
model.evaluate(np.array(v_set_x),np.array(v_set_y))
calssifications=model.predict(np.array(v_set_x))
print(model.predict(np.array([[14,17,16,3,2,16,15,10,15,17,1,16,8,14,15,19,19,8,12,3]])))
print(calssifications[0])
print(v_set_x[0])
print(model.get_weights())
