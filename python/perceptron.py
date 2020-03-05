import numpy as np

def sigmoid( theta, a):
	z=np.dot(theta, a)
	return 1/(1+np.exp(-1*z))

t_set_x=[]
t_set_y=[]
m=100
for _ in range(0,m):
	a=np.random.randint(0,20,7)
	i=np.random.randint(0,2)
	if (i==1):
		a = np.append(a, [10, 15, 17,1])
	else:
		a = np.append(a, np.random.randint(0, 10, 3))
		a = np.append(a, 1)

	t_set_x.append(a)
	t_set_y.append(i)


theta=np.random.randn(11)/100
for _ in range(0,1000):
	f=[]
	for i in range(0, len(t_set_x)):
		f.append(sigmoid(theta, t_set_x[i]))

	a=np.array(f)-np.array(t_set_y)
	b=np.array(t_set_x).T*a
	theta1=sum(b.T)
	#print(theta1)
	theta=theta-(0.01/m)*theta1

x=[]
"""for i in range(0,len(t_set_x)):
	x.append(sigmoid(theta, t_set_x[i])-t_set_y[i])
print(x)"""
print(theta)
print(sigmoid(theta, [10,3,4,5,1,1,1,1,2,3,1]))