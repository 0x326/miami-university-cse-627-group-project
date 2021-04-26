[dataset]: https://www.kaggle.com/c/titanic/data

# CSE 627 Group Project

## Prerequisites

```bash
pip3 install --upgrade nbdime nbstripout

cd miami-university-cse-627-group-project/
nbstripout --install
nbdime config-git --enable
```

## Usage

Download [dataset].

Start Jupyter server:

```bash
make
docker-compose up
```

Then open [`localhost:8850`](http://localhost:8850)
