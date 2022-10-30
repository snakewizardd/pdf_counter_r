FROM rocker/rstudio:latest

RUN apt-get update && apt-get install -y \
    sudo \
    pandoc \
    pandoc-citeproc \
    libcurl4-gnutls-dev \
    libcairo2-dev \
    libxt-dev \
    libssl-dev \
    libssh2-1-dev \
    default-jdk \ 
    r-cran-rjava \
    libgdal-dev \
    libproj-dev \
    software-properties-common \
    curl

RUN R -e "install.packages('pdftools', repos ='http://cran.rstudio.com/')"
RUN R -e "install.packages('fs', repos ='http://cran.rstudio.com/')"
RUN R -e "install.packages('data.table', repos ='http://cran.rstudio.com/')"
RUN R -e "install.packages('xlsx', repos ='http://cran.rstudio.com/')"


EXPOSE 8787
