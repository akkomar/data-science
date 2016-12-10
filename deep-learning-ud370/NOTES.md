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
1. Train simple model using scikit-learn - logistic regression with gradient descent


Result: for unsanitized data logistic regression classifier has poor accuracy (~20%)

### Cross-validation
http://scikit-learn.org/stable/modules/cross_validation.html#cross-validation

### Stochastic Gradient Descent
Gradient descent doesn't scale well. Computing loss function between iterations is costly - it depends on every single element in the training set. **Stochastic gradient descent** is solution - it involves computing an estimate of the loss function - average loss for a very small random fraction of the training data. Each iteration will be cheaper to compute, but we'd need to make more of them - on balance, though, we win, doing this is more efficient than gradient descent.

Very important for SGD:
* inputs with 0 mean and equal, small variance
* random weights with 0 mean and equal, small variance
* when doing step-by step modifications of the weights, we can keep track of running average of the gradients and use it instead of the direction calculated from the current batch of the data - **Momentum technique** (we're keeping track of the average direction from previous steps)
* **Learning Rate Decay** - decrease steps over time

Lots of "magic" - many hyperparameters affecting learning rate
