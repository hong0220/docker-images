FROM centos:7.4.1708

MAINTAINER hongduoduo 1023746826@qq.com

# 安装ssh
RUN yum -y install passwd which openssl openssh-server openssh-clients  && \
    mkdir /var/run/sshd/  && \
    # UsePAM yes改为UsePAM no
    sed -i "s/UsePAM.*/UsePAM no/g" /etc/ssh/sshd_config  && \
    # 创建公私密钥
    ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key  && \
    ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key  && \
    ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519_key  && \
    # 修改root密码
    echo "root:root" | chpasswd

# 配置jdk,github免密登录
RUN yum install -y java-1.8.0-openjdk git
RUN git config --global uer.name "hong0220"  && \
    git config --global uer.email "1023746826@qq.com"  && \
    # 生成密码
    ssh-keygen -t rsa -f /root/.ssh/id_rsa -C "1023746826@qq.com"

# 安装tomcat
COPY apache-tomcat-9.0.41.tar.gz /root
RUN cd /root  && \
    tar -xvf apache-tomcat-9.0.41.tar.gz

# 安装maven
COPY apache-maven-3.6.3-bin.tar.gz /root
RUN cd /root  && \
    tar -xvf apache-maven-3.6.3-bin.tar.gz  && \
    echo "export PATH=/root/apache-maven-3.6.3/bin:$PATH" >> /etc/profile  && \
    # 没有生效
    source /etc/profile

# 暴露端口
EXPOSE 22

# 开启ssh服务
CMD /usr/sbin/sshd -D
