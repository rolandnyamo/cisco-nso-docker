FROM ubuntu:latest

#adapeted from https://github.com/NSO-developer/container-examples/tree/master/nso-docker
# Install deps
COPY nso-4.7.linux.x86_64.installer.bin /tmp/nso
COPY run-nso.sh /root/.

RUN apt-get update;\ 
    apt-get install -y openssh-client default-jre-headless; \
    /tmp/nso /root/nso; \
    echo '. ~/nso/ncsrc' >> /root/.bashrc; \
    chmod +x /root/run-nso.sh;\
    mkdir /root/ncs-run;\
    # ncs-setup --dest root/ncs-run/;\
    # ncs-setup --dest /root/nso/nso-project\
    apt-get -y clean autoclean;\
    apt-get -y autoremove;\
    rm -rf /tmp/* /var/tmp/* /var/lib/{apt,dpkg,cache,log}/ 

EXPOSE 8080 830 2022 2023 4569 80 443

ENTRYPOINT ["/root/run-nso.sh"]