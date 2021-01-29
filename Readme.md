Compare execution speeds between C++, CPython and pypy.

The aim of this project is to learn Docker and allow quick dockerized comparisons of Cpython, pypy and C++.

## Requirements

Install docker and dependencies:

* [Installing Docker](https://docs.docker.com/engine/installation/#get-started)
* [Installing Docker compose](https://docs.docker.com/compose/install/#install-compose)

## Usage

* Clone this repo `git clone https://github.com/szulcmaciej/python_cpp_comparison.git && cd python_cpp_comparison`
* Pull & run the container `make run`
* Configure comparison in `./compare.sh`
* Run compare.sh `./compare.sh`
