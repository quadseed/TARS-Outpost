FROM python:3.11.1-slim-bullseye

WORKDIR app/

RUN apt-get update && apt-get upgrade -y

COPY ./*.py /app/

COPY requirements.txt /app/

RUN pip install --upgrade pip
RUN pip install --upgrade setuptools
RUN pip install -r requirements.txt

CMD ["python", "main.py"]