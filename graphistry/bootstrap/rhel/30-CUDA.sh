#!/bin/bash

# Install CUDA 9.1 and Dependencies
sudo yum groupinstall -y "Development Tools" | tee
sudo yum groupinstall -y "Development Libraries" | tee

sudo yum install -y kernel-devel-$(uname -r) kernel-headers-$(uname -r) curl | tee

wget http://developer.download.nvidia.com/compute/cuda/repos/rhel7/x86_64/cuda-repo-rhel7-9.1.85-1.x86_64.rpm
sudo rpm -i cuda-repo-rhel7-9.1.85-1.x86_64.rpm | tee
sudo yum clean all | tee
sudo yum install cuda -y | tee
nvidia-smi
sudo rm -rf cuda-repo-rhel7-9.1.85-1.x86_64.rpm

