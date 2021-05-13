[dataset]: https://www.kaggle.com/c/titanic/data

# CSE 627 Group Project

## Prerequisites

```bash
sudo apt update && sudo apt install docker docker-compose git-lfs
pip3 install --upgrade nbdime nbstripout

cd miami-university-cse-627-group-project/
git lfs install
nbstripout --install
nbdime config-git --enable
```

## Usage

Download [dataset].

Start Jupyter server:

```bash
make
docker-compose up --build
```

Then open [`localhost:8850`](http://localhost:8850)
