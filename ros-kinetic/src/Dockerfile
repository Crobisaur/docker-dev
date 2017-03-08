FROM ros:kinetic-desktop-full
#install g2o from source
COPY pcl/ /pcl/

RUN \
    cd /pcl && \
    mkdir build && \
    cd build && \
    cmake .. && \
    cmake -DCMAKE_BUILD_TYPE=Release .. && \
    make -j8 

ARG name=asd-pcl
ARG repo=ict

RUN apt-get update && \
    apt-get -y install --no-install-recommends \
    apt-utils \
    checkinstall && \
    rm -rf /var/lib/apt/lists/*

ARG version=1.0.1

RUN cd /pcl/build && \
    echo $desc":"$name $version >description-pak && \
    checkinstall -Dy --install=no --nodoc --pkgname=$name --pkgversion=$version \
    --pakdir=/tmp --backup=no make -i install

CMD ["/bin/bash"]
