FROM python:latest 
COPY . . 
ENV DB_TYPE=postgresql
ENV DB_USERNAME=postgres
ENV DB_PASSWORD=postgres
ENV DB_ENDPOINT=postgres:5432 
ENV DB_TEST_NAME=bit_schema_test
ENV POSTGRES_HOST=postgres
ENV POSTGRES_PORT=5432
RUN pip install --no-cache-dir -r requirements.txt
CMD python run.py