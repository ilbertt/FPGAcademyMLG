import numpy as np
true_set=np.load("arrays/true_set.npy")
false_set=np.load("arrays/false_set.npy")

y_true=np.zeros(len(true_set))+1    # array of 1 for true_set
y_false=np.zeros(len(false_set))    # array of 0 for false_set

true_set=list(zip(true_set,y_true))     # join sample with 1
false_set=list(zip(false_set,y_false))  # join sample with 0

dataset=true_set+false_set  # join true and false sets to create dataset
np.random.shuffle(dataset)  # shuffle the array to have random order
dataset=np.array(dataset)
dataset_x=dataset[:,0]
dataset_y=dataset[:,1]

print('\nTrue keywords:',len(true_set)) # log
print('False keywords:',len(false_set)) # log
print('\nDataset X:',len(dataset_x))    # log
print('Dataset Y:',len(dataset_y))      # log
print('\n')

dataset=np.array([dataset_x,dataset_y])
np.save("arrays/dataset", dataset)