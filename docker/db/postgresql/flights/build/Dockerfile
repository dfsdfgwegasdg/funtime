FROM postgres:latest
# Copy data to the image
COPY data/flights-example-db.tar.gz /tmp/data-db/
# Unzip data
RUN tar -xf /tmp/data-db/flights-example-db.tar.gz -C /tmp/data-db
# anyone can view this data
RUN chmod 777 /tmp/data-db/*
# copy entrypoint script
COPY entrypoint.sh /docker-entrypoint-initdb.d/
# delete zip archive
RUN rm /tmp/data-db/flights-example-db.tar.gz