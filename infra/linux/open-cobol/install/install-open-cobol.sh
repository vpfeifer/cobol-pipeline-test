curl -L http://sourceforge.net/projects/open-cobol/files/open-cobol/2.0/open-cobol-2.0-feb2012.tar.gz -O

tar -xvf open-cobol-2.0-feb2012.tar.gz

apt-get install -y libgmp3-dev libncurses-dev libltdl-dev libncurses-dev libdb-dev

cd open-cobol-2.0
./configure
make
make check
make install

sudo cp /usr/local/lib/libcob.so.4 /usr/lib/libcob.so.4