FROM python:2.7.11

COPY deps /requirements.txt
RUN pip install -r /requirements.txt

COPY nltk_data /root

COPY . /sum
WORKDIR /sum

CMD ["./start"]
