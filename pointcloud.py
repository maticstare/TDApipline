import random
from matplotlib import pyplot

random.seed(10)

def generatePointCloud(n):
    return [(random.randint(-n, n), random.randint(-n, n)) for _ in range(n)]

def plot(points):
    xs, ys = map(list, zip(*points))
    pyplot.axis([min(xs)-1,max(xs)+1,min(ys)-1,max(ys)+1])
    pyplot.plot(xs, ys, 'ro')
    pyplot.show()


#print(generatePointCloud(100))
#plot(generatePointCloud(100))