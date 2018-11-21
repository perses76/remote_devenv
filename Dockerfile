FROM archlinux/base

# packages
RUN pacman -Suy --noconfirm
RUN pacman -S --noconfirm vim supervisor python python-pip git openssh

# supervisor
COPY supervisord.conf /etc/supervisord.conf

# ssh keys
# Add the keys and set permissions

RUN echo "$ssh_prv_key" > /tmp/id_rsa
RUN eval $(ssh-agent -a /run/.ssh-agent$$)
RUN chmod 600 /tmp/id_rsa
RUN ssh-add /tmp/id_rsa

# ADD ~/.ssh/id_rsa.pub /tmp/
# ADD ~/.ssh/id_rsa /tmp/
# RUN ssh-agent /tmp
# RUN rm /tmp/ida_rsa.pub
# RUN rm /tmp/ida_rsa

# RUN mkdir -p /root/.ssh
# COPY ~/.ssh/id_rsa.pub /root/.ssh/id_rsa.pub
# COPY ~/.ssh/id_rsa /root/.ssh/id_rsa

CMD ["/usr/bin/supervisord"]

