FROM jupyter/all-spark-notebook

RUN conda install -c conda-forge --quiet --yes \
        'tqdm' \
        'r-tidyverse' \
        'r-svglite' \
        'rpy2'

USER root

RUN sed -i 's/exec sudo/ulimit -Sn 4096; ulimit -Hn; exec sudo/g' /usr/local/bin/start-notebook.sh

USER ${NB_USER}
