FROM ubuntu:18.04

RUN apt-get update -y

RUN apt-get install --no-install-recommends --fix-missing -y \
        python-pip python-dev build-essential python-setuptools python-wheel

COPY . /app

WORKDIR /app

RUN pip install -r requirements.txt

ENTRYPOINT ["python"]

CMD ["app.py"]
