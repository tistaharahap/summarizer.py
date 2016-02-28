FROM python:2.7.11

COPY deps /requirements.txt
RUN pip install -r /requirements.txt

RUN apt-get update
RUN apt-get install -y unzip

COPY . /sum
WORKDIR /sum

RUN unzip nltk-data.zip
RUN ln -s /sum/nltk_data /root/nltk_data
CMD ["./start"]
