## Github repo
https://github.com/tensorflow/tensorflow/tree/master/tensorflow/examples/udacity

## Logistic classifier
* the way to turn scores into probabilities is [softmax function](https://en.wikipedia.org/wiki/Softmax_function)
** increase softmax inputs => classifier is "more confident"
* cross entropy - for measuring distance between two probability vectors (warning: it's not symmetric)
* well-conditioned problem will have variables that have 0 mean and equal variance - b/c of possible numerical issues + optimizer won't have to do a lot o searching for finding good solution
* weights initialization - draw randomly for gaussian distribution with chosen sigma (depending on order of magnitude of outputs, usually best to choose small sigma)

### Assignment 1
1. Read image files into ndarrays using `scipy.ndimage.imread` normalizing their values (we need to convert pixel values [0-255] into [-1,+1] range - see description of well-conditioned problem under **Logistic classifier**)
1. Verify that data is roughly balanced in terms of number of images in each class
1. Create datasets for training, validating and testing classifiers
1. Randomize data - we can't feed our classifier with all A's, then all B's and so on
1. Measure overlap between training and test data (might lead to overfitting)
