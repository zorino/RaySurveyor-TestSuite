#!/bin/bash


cd ray-build/

# RayPlatform
cd RayPlatform/
make clean
git pull
make -j 2
cd ../

# Ray
cd ray/
make clean
git pull
make -j 2 PREFIX=`pwd`/BUILD MAXKMERLENGTH=64 HAVE_LIBZ=y HAVE_LIBBZ2=y ASSERT=n
make install
cd ../

cd ../
