FROM ubuntu:xenial

MAINTAINER Jason Mark "jason.mark.01@gmail.com"

RUN apt-get update && apt-get install -y \
    wget \
    gdebi-core \
    libssl-dev

RUN echo 'deb http://cran.cnr.berkeley.edu/bin/linux/ubuntu xenial/' > /etc/apt/sources.list

RUN apt-get update && apt-get install -y \
    r-base

# Install R packages
#    R -e "install.packages('rmarkdown', repos='http://cran.rstudio.com/')" && \
#    R -e "install.packages('shinythemes', repos='http://cran.rstudio.com/')" && \
#    R -e "install.packages('shinydashboard', repos='http://cran.rstudio.com/')" && \
#    R -e "install.packages('dplyr', repos='http://cran.rstudio.com/')" && \
#    R -e "install.packages('scales', repos='http://cran.rstudio.com/')" && \
#    R -e "install.packages('lubridate', repos='http://cran.rstudio.com/')" && \
#    R -e "install.packages('ggplot2', repos='http://cran.rstudio.com/')" && \
#    R -e "install.packages('labeling', repos='http://cran.rstudio.com/')" && \
#    R -e "install.packages('reshape2', repos='http://cran.rstudio.com/')" && \
#    R -e "install.packages('gridExtra', repos='http://cran.rstudio.com/')" && \
#    R -e "options(repos='http://cran.rstudio.com/');"