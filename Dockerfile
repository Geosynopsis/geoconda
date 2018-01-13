FROM continuumio/miniconda

MAINTAINER Abhishek Manandhar <abhishek.adams@gmail.com>

RUN conda update -y conda
RUN conda config --add channels conda-forge
RUN conda install -y gdal rasterio geopandas

ENTRYPOINT [ "/usr/bin/tini", "--" ]
CMD [ "/bin/bash" ]