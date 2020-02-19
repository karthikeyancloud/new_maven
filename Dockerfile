FROM amazonlinux
ADD . /var/
RUN yum update -y
