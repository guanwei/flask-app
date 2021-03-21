FROM python:slim
LABEL io.openshift.s2i.scripts-url="image:///usr/libexec/s2i/" io.openshift.tags="builder,python"
WORKDIR /opt
RUN mkdir -p /usr/libexec/s2i/ && pip install virtualenv -i https://pypi.douban.com/simple && virtualenv venv && chown 1001:0 -R /opt
ADD s2i/ /usr/libexec/s2i/
ENV PATH /opt/venv/bin:$PATH
USER 1001
EXPOSE 5000
CMD /usr/libexec/s2i/usage
