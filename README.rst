##################################################
Ubuntu bionic 64-bit images with Pythons installed
##################################################

Ubuntu bionic (18.04) docker images (64-bit) with Pythons:

* 2.7;
* 3.4;
* 3.5;
* 3.6
* 3.7
* 3.8

installed via ``apt-get install python2.7-dev`` (etc).

Pip installed for each Python via `get-pip.py
<https://bootstrap.pypa.io/get-pip.py>`_.

Pythons include pip and setuptools.

Extra development libraries left in the installation:

- multibuild libraries
- libffi-dev (needed for cffi)

Use them via (for x86_64) ``docker pull multibuild/bionic_x86_64; docker run -it multibuild/bionic_x86_64 /bin/bash``

