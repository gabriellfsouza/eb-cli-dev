FROM amazonlinux:2023.3.20231218.0

WORKDIR /root

RUN yum -y groupinstall "Development Tools"
RUN yum -y install openssl-devel bzip2-devel libffi-devel wget aws-cli git pip 
RUN wget https://www.python.org/ftp/python/3.9.10/Python-3.9.10.tgz
RUN tar xvf Python-3.9.10.tgz
RUN cd Python-3.9.10 && ./configure --enable-optimizations && make altinstall
RUN pip install virtualenv
RUN git clone https://github.com/aws/aws-elastic-beanstalk-cli-setup.git
RUN python3.9 ./aws-elastic-beanstalk-cli-setup/scripts/ebcli_installer.py

ENV PATH="${PATH}:/root/.ebcli-virtual-env/executables"

RUN ln -s /usr/bin/python3.9 /usr/bin/python