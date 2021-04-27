FROM jupyter/all-spark-notebook

RUN conda install -c conda-forge --quiet --yes \
        'rpy2'
