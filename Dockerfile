FROM ubuntu:20.04
LABEL maintainer='Kenan BOLAT'

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1
COPY ./requirements.txt /tmp/requirements.txt
WORKDIR /app
COPY ./apply_geospatial_task_notebook.ipynb /app/apply_geospatial_mask_notebook.ipynb
COPY ./main.py /app/main.py
COPY ./data/CS_OFFL_SIR_TDP_LI_ANTARC_20200131T233342_20200131T233512_13_00205_B001.nc /app/data/CS_OFFL_SIR_TDP_LI_ANTARC_20200131T233342_20200131T233512_13_00205_B001.nc

ARG DEV=false

RUN apt-get update && \
    export CPLUS_INCLUDE_PATH=/usr/include/gdal && \
    export C_INCLUDE_PATH=/usr/include/gdal && \
    apt-get install -y curl 

# RUN mkdir /app/data/ && cd /app/data/ && cp ../get_data.sh . && ./get_data.sh 

RUN apt-get install -y python3 && \
    apt-get install -y software-properties-common && \
    apt-get -y install libgl1 libpq-dev python3.8-dev python3-venv binutils g++ python3-pip && \
    add-apt-repository ppa:ubuntugis/ppa &&  apt-get update && \
    apt-get install -y gdal-bin libgdal-dev jupyter&& \
    python3 -m pip install --upgrade pip && \
    python3 -m pip install -r /tmp/requirements.txt && \
    rm -rf /tmp