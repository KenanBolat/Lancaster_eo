#!/bin/bash


apt-get  update

apt-get  install  -y --no-install-recommends --no-install-suggests libgdal-dev gdal-bin
apt-get  install  -y --no-install-recommends --no-install-suggests libhdf5-dev netcdf-bin libnetcdf-dev  git wget build-essential
