FROM ibmcom/kitura-ubuntu:latest
EXPOSE 8090
USER root
RUN cd /root && mkdir kitura-test
COPY . /root/kitura-test/
RUN cd /root/kitura-test && swift build -Xcc -fblocks
CMD ["/root/kitura-test/.build/debug/KituraTest"]
