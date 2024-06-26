# Geospatial Task

This repository is being formed to demonstrate the solution to the geopsatial task 

- Code can be tested via the following methods described
    - Virtual environment:
    - Docker Method:
    - Jupyter solution:
        - Local
        - Via Docker

## Requirements

> - All the sample data must be copied into the ```data``` folder
> - the ```data``` folder path can be changed by updating the ```processing_path``` variable within the code.
> - Virtual environment method requires ```debian``` based linux distribution in order to work properly.
> - Docker methods can be used in mac and windows operating systems

## Virtual Environment

> - ``` python3 -m venv venv```
> - ``` source venv/bin/activate```
> - ``` ./install.sh ``` # For GDAL
> - ``` pip install -r requirements.txt ```

If all the steps are successful you can use the virtual environment as your projects default interpreter to test the
codebase.
From the settings menu of your favorite Python IDE change the interpreter to the newly created ```venv``` folder.

## Docker Method

> - Make sure in your operating system docker is installed and running.
> - This method is going to download the test data to the predefined ```/data``` folder once it is initiated. Therefore initiation might take a condsiderable time depending on the your provider's internet speed. 
> - For the docker method, a dedicated ubuntu base image has been used. All the necessary libraries and virtual
    environments are being handled via docker image. Required python libraries, necessary local libraries, and the
    virtual
    environment is being prepared for you within the image.
> - ```docker-compose -f docker-compose.yml up -d ```
> - ```Change interpreter from the virtual environment to docker environment```
     ![alt text](https://github.com/KenanBolat/geospatial_task/blob/main/media/docker_compose_interpreter.png)
> - After updating the interpreter options, you can run the ```main.py``` to see the results.
> - Outputs are also exported to the ```data``` folder with a date tag of ```YYYYMMDD-HHMM```.
> - Docker build install following libraries:
> - ```xarray```
> - ```gdal```
> - ```rasterio```
> - ```rioxarray```
> - ```jupyter```

## Jupyter Method:

### Local

> - Define your python interpreter using the above methods
> - from the command line run the following code:
>   - ```jupyter notebook --ip 0.0.0.0 --port 8888 --allow-root --NotebookApp.token='' --NotebookApp.password=''```
> - You can run the individual cells to review the task
> - Please be sure you have the test data copied into the ```data``` folder.

### Via Docker

> - Make sure in your operating system docker is installed and running.
> - run the code ```docker-compose -f docker-compose.yml up -d ```
> - from any internet browser go to the following page:
>   - ```http://localhost:8999/```
> - You can run the individual cells to review the task
> - Please be sure you have the test data copied into the ```data``` folder.
