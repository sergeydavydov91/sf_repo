FROM python:3.8-slim-buster
WORKDIR /opt/hw/
COPY web.py conf/web.conf /opt/hw/
COPY conf/web.conf /opt/hw/conf/
ENV PIP_ROOT_USER_ACTION=ignore
ARG DEBIAN_FRONTEND=noninteractive
RUN python -m pip install --upgrade pip
RUN pip install configparser flask psycopg2-binary
EXPOSE 80
RUN python web.py

