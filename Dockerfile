FROM quay.io/pypa/manylinux2010_x86_64

RUN yum -y remove cmake && \
    for PYBIN in /opt/python/cp3*/bin; do "${PYBIN}/pip" install --upgrade pip && "${PYBIN}/pip" install setuptools cmake wheel twine; done
