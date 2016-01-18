FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get install -y python-pip
RUN apt-get install -y git
RUN apt-get install -y python-dev
RUN git clone https://github.com/michaelbuckner/linkedin_redirect.git
RUN pip install -r linkedin_redirect/requirements.txt

EXPOSE 5000:5000
ENTRYPOINT ["python"]
CMD ["linkedin_redirect/app.py"]