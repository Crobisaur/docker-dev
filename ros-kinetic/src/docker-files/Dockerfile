FROM ros:kinetic-desktop-full
#install g2o from source
COPY g2o/ /g2o/
RUN \
    cd /g2o && \
    mkdir build && \
    cd build && \
    cmake .. && \
    make -j8
