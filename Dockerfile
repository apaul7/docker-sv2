FROM python:2
MAINTAINER Alexander Paul <alex.paul@.wustl.edu>

LABEL \
  description="Docker image to run SV2 (https://github.com/dantaki/SV2)"

RUN pip install numpy cython pandas pybedtools pysam>=0.9 scikit-learn>=0.19 wget

RUN pip install sv2==1.5

RUN chmod 777 /usr/local/lib/python2.7/site-packages/sv2/config/*
RUN /usr/bin/yes | sv2 -download

WORKDIR /