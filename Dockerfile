FROM jupyter/all-spark-notebook

RUN conda install -c conda-forge --quiet --yes \
        'tqdm' \
        'r-tidyverse' \
        'r-svglite' \
        'rpy2'
