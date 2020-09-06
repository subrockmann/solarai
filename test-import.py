import numpy as np
import geopandas as gpd
from pathlib import Path
import rasterio as rio
from rasterio.transform import from_bounds
import os
from shutil import copy, copyfile             # Copy files from Source to Destination
from shapely import geometry
import pandas as pd
from skimage.io import imread
#pd.options.display.max_columns = None
import matplotlib.pyplot as plt
from matplotlib.collections import PatchCollection
from matplotlib.patches import Rectangle, Polygon
from matplotlib.collections import PatchCollection
import imageio
from PIL import Image
import json