
import numpy as np
import matplotlib.pyplot as plt

threshold = 1000	# maximum amplitude of background noise
reduced_samples = 5500		# number of samples of npy array used to train the neural net
b = np.zeros(reduced_samples)

# the array of npy samples is saved in samples.npy and loaded into "a"
a = np.load('samples.npy')
samples = a.size
a = np.reshape(a, samples)

# plot original npy array 
x = np.linspace(0, samples - 1, samples)
plt.plot(x, a)
plt.plot([0, samples], [threshold, threshold], 'k-', lw=2)	# threshold line
plt.show()

# skip samples until the threshold is passed
i = 0
while i < samples and a[i] < threshold:
	i = i+1

# stores a total of "reduced_samples" samples starting fr4om the one that passed the threshold
j = 0
while j < reduced_samples and i+j < samples: 
	b[j] = a[i + j]
	j = j+1

# plot modified npy array
x1 = np.linspace(0, reduced_samples - 1, reduced_samples)
plt.plot(x1, b)
plt.show()
