## Github repo
https://github.com/tensorflow/tensorflow/tree/master/tensorflow/examples/udacity

## Logistic classifier
* the way to turn scores into probabilities is [softmax function](https://en.wikipedia.org/wiki/Softmax_function)
** increase softmax inputs => classifier is "more confident"
* cross entropy - for measuring distance between two probability vectors (warning: it's not symmetric)
* well-conditioned problem will have variables that have 0 mean and equal variance - b/c of possible numerical issues + optimizer won't have to do a lot o searching for finding good solution
* weights initialization - draw randomly for gaussian distribution with chosen sigma (depending on order of magnitude of outputs, usually best to choose small sigma)

### Assignment 1
