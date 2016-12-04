## Github repo
https://github.com/tensorflow/tensorflow/tree/master/tensorflow/examples/udacity

## Logistic classifier
* the way to turn scores into probabilities is [softmax function](https://en.wikipedia.org/wiki/Softmax_function)
** increase softmax inputs => classifier is "more confident"
* cross entropy - for measuring distance between two probability vectors (warning: it's not symmetric)
* we want to minimize cross entropy (loss function) - e.g. using gradient descent - take the derivative of the loss and follow it backwards
* well-conditioned problem will have variables that have 0 mean and equal variance - b/c of possible numerical issues + optimizer won't have to do a lot o searching for finding good solution
* weights initialization - draw randomly for gaussian distribution with chosen sigma (depending on order of magnitude of outputs, usually best to choose small sigma)

### Assignment 1
1. Read image files into ndarrays using `scipy.ndimage.imread` normalizing their values (we need to convert pixel values [0-255] into [-1,+1] range - see description of well-conditioned problem under **Logistic classifier**)
1. Verify that data is roughly balanced in terms of number of images in each class
1. Create datasets for training, validating and testing classifiers
1. Randomize data - we can't feed our classifier with all A's, then all B's and so on
1. Measure overlap between training and test data (might lead to overfitting)
1. Train simple model using scikit-learn

Result: for unsanitized data logistic regression classifier has poor accuracy (~20%)
