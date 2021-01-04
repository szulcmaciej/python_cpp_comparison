FROM pypy:3.7
COPY requirements.txt requirements.txt
RUN apt update && apt -y install time vim python3-pip
RUN python3 -m pip install -r requirements.txt
RUN pypy -m pip install -r requirements.txt