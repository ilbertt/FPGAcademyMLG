import numpy as np
true_set=np.load("true_set.npy")
false_set=np.load("false_set.npy")
y_true=np.zeros(len(true_set))+1
y_false=np.zeros(len(false_set))
true_set=list(zip(true_set,y_true))
false_set=list(zip(false_set,y_false))
dataset=true_set+false_set
np.random.shuffle(dataset)
dataset=np.array(dataset)
dataset_x=dataset[:,0]
dataset_y=dataset[:,1]
#print(np.where(dataset_y==1))

dataset=np.array([dataset_x,dataset_y])
np.save("dataset", dataset)