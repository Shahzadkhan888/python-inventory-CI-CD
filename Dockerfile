# choose base image
FROM python:3.11-slim

# create folder inside the image
RUN mkdir -p /home/app

WORKDIR /home/app

COPY . /home/app

# install dependencies
RUN pip install openpyxl

CMD ["python", "main.py"]