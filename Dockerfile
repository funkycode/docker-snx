FROM centos:centos7

RUN yum update -y

RUN yum install -y  \
   wget \
   bzip2 \
   which \
   expect \
   glibc.i686  \
   pam.i686
   compat-libstdc++-33.i686 \
   libX11.i686 


RUN wget https://vpnportal.aktifbank.com.tr/SNX/INSTALL/snx_install.sh -O /tmp/snx_install.sh && \
    chmod +x /tmp/snx_install.sh && \
    /tmp/snx_install.sh

COPY entrypoint.sh /

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
