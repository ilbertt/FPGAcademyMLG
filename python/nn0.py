import numpy as np

class neural_net:
	"""docstring for neural_net"""
	def __init__(self, theta_vec):
		super(neural_net, self).__init__()
		self.theta_vec = theta_vec;
		self.layer=len(theta_vec)
		self.nlayer=[]
		for i in range(0, self.layer):
			self.nlayer.append(len(theta_vec[i]))


	def sigmoid(self, theta, a):
		a=np.insert([a],0,1)
		z=np.dot(theta, a)
		return 1/(1+np.exp(-1*z))

	def retsize(self):
		return self.nlayer

	def info(self):
		"""
    This function print the size o the neural network
    """
		print("The network has "+str(self.layer)+" layers:")
		for i in range(0, self.layer):
			print("\tlayer "+str(i+1)+" has "+str(self.nlayer[i])+" neurons;" )	

	def compute(self, x):
		a1=[x]
		for i in range(0, self.layer):
			a1=self.sigmoid(self.theta_vec[i],a1)

		return a1	

	def compute_a(self, x):
		a=[x]
		for i in range(0, self.layer):
			a1 = self.sigmoid(self.theta_vec[i],a[i])
			a.append(a1)

		return a		


nn= neural_net([[[-10, 20, 20],[0, 0, 0]],[[10, -20, 1]]])
print(nn.compute_a([0,0]))
nn.retsize()
nn.info()
