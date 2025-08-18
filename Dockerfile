#Dockerfile
FROM python:3.12.4
# psycopg2 for python for accesing postgres
RUN pip install pyarrow
RUN pip install wget
RUN pip install pandas sqlalchemy psycopg2
WORKDIR /app
COPY ingest_data.py .
CMD ["python", "ingest_data.py"]