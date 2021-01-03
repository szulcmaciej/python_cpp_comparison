FROM pypy:3.7
RUN apt update && apt -y install time python3-pip
RUN python3 -m pip install -r requirements.txt
RUN pypy -m pip install -r requirements.txt