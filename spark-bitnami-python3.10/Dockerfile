FROM bitnami/python:3.10 as build

FROM bitnami/spark:3.3.0

COPY --from=build /opt/bitnami/python/ /opt/bitnami/python/

USER root

RUN  apt-get update && apt-get install -y python3-wheel

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

RUN mv /opt/bitnami/spark/jars/guava-14.0.1.jar /opt/bitnami/spark/jars/guava-14.0.1.jar.bk
COPY *.jar /opt/bitnami/spark/jars/       