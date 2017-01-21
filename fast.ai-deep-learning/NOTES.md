* Course website:
http://course.fast.ai/start.html
* Git repo for the course (clone here, gitignored):
https://github.com/fastai/courses.git
* wiki:
http://wiki.fast.ai/index.php/Main_Page



## Setup
1. Install aws cli
1. Create instance on AWS:
    * `fast.ai-courses/setup/setup_t2.sh` or
    * `fast.ai-courses/setup/setup_p2.sh`
1. Use exports from `fast-ai-commands.txt`
1. Ssh into created instance and run `nvidia-smi` (checks if nvidia driver is running).
1. Delete .bash_history `sudo rm .bash_history` (has wrong permissions)
1. Run Jupyter notebook: `jupyter notebook` (default pass: dl_course)
1. Automation:
    * `source setup/aws-alias.sh`
    * `aws-get-p2`
    * `aws-ip`
    * `aws-start`
    * `aws-ssh`
    * `aws-stop`
    * Download training data and notebooks: `setup/setup-data.sh`


## Jupyter tips
* `??FUNCIOTN_NAME` - displays function's documentation and implementation
* `Shift+TAB` - documentation popup


# Lesson 1
* Neural networks are universal approximation machines (see universal approximation theorem - nonlinear function approximated by NN is capable of handling any problem we throw at it)
* gradient descent + backpropagation - fitting function's parameters
* learning pre-trained model = fine-tuning
*

Qs:
* deep learning uses single precision arithmetic - why? (possible answer: https://arxiv.org/pdf/1412.7024.pdf)
