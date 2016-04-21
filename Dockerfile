FROM biodckr/biodocker

# install wget
RUN yum -y install wget
RUN yum -y install tar
RUN yum -y install bzip2
RUN yum -y install git

# install libgtextutils 
RUN wget https://github.com/agordon/libgtextutils/releases/download/0.7/libgtextutils-0.7.tar.gz
RUN tar -xvf libgtextutils-0.7.tar.gz
RUN cd libgtextutils-0.7 
RUN ./configure
RUN make
RUN sudo make install


# install fastx_toolkit
RUN wget https://github.com/agordon/fastx_toolkit/releases/download/0.0.14/fastx_toolkit-0.0.14.tar.bz2
RUN tar -xvf fastx_toolkit-0.0.14.tar.bz2 
RUN cd fastx_toolkit-0.0.14
RUN ./configure
RUN make
RUN sudo make install

