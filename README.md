# aws-ec2-automate
Automate the process for launching and terminating EC2 instances

I wrote a bash script to help launch, connect and terminate an AWS EC2 instance from the command line.

## Dependencies
Only [AWS Command Line Interface (CLI)](https://aws.amazon.com/cli/)

## Prerequisites
Before running the scipt, follow these steps (if you haven't done so already):

1. Signup for [AWS EC2 free tier](http://aws.amazon.com/free/). This may require phone authentication.
2. Install AWS CLI using instructions [here](http://docs.aws.amazon.com/cli/latest/userguide/installing.html).
3. Key pair allows to securely connect to an instance. For a Linux [AMI](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIs.html), this means being able to securely SSH into your Linux instance. To get your key pair, follow instructions [here](https://aws.amazon.com/getting-started/tutorials/launch-a-virtual-machine/). Specifically look for instructions in part (d). Store your key pair at `~/.ssh/MyKeyPair.pem`
4. Next up, you need your [access keys](https://aws.amazon.com/developers/access-keys/). Access keys consist of Access Key ID and Secret Access Key. These are required to configure AWS CLI. Instructions to get and download your access keys are [here](http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-set-up.html). Look for the section "To get your access key ID and secret access key".
5. On the command line, execute `aws configure`. Fill in your Access Key ID and Secret Access Key when asked. This will also ask for your default region name, look it up in your EC2 dashboard under "Availablility Zone Status". An example is `us-west-2`. Finally, you'll be asked for Default Output Format, you can leave it blank. To read more, go [here](http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-started.html).
6. Now you're done with the AWS setup part. It's time to configure `aws-ec2-automate`. For that, execute `./aws-ec2-automate configure`. This will ask for an [Image ID](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html), Instance Type (https://aws.amazon.com/ec2/instance-types/), and Key Name (e.g. "MyKeyPair" from part-3 above). Image ID is of format `ami-xxxxxxxx`. Instance Type is typically `t2.micro` which is applicable for free-tier as of today (02/14/2017).

## Launching, Terminating and getting Status

## Limitations

## Enhancements


