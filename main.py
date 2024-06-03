# Import necessary libraries
import numpy as np
import matplotlib.pyplot as plt
from netCDF4 import Dataset
import xarray as xr



file_path = 'path_to_your_file.nc'
nc_file = Dataset(file_path, mode='r')