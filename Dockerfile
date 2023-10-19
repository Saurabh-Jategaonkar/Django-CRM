FROM python:3.11

ENV PYTHONUNBUFFERED 1

RUN mkdir /django_crm

WORKDIR /django_crm

RUN python3 -m venv virt
ENV VIRTUAL_ENV virt
RUN /bin/bash -c "source $VIRTUAL_ENV/bin/activate"

ADD . /django_crm/

RUN pip install -r requirements.txt