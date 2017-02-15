# aws-ec2-automate
Automate the process for launching and terminating EC2 instances

I wrote a bash script to help launch, connect and terminate an AWS EC2 instance from the command line.

Before running the scipt, follow these steps (if you haven't done so already):

* Signup for [AWS EC2 free tier](http://aws.amazon.com/free/). This may require phone authentication.
* Key pair allows to securely connect to an instance. For a Linux [AMI](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIs.html), this means being able to securely SSH into your Linux instance. To get your key pair, follow instructions [here](https://aws.amazon.com/getting-started/tutorials/launch-a-virtual-machine/). Specifically look for instructions in part (d). Store your key pair at `~/.ssh/MyKeyPair.pem`


