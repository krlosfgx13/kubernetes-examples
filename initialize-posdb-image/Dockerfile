FROM postgres

WORKDIR /app

# Copy SQL files and script into the image
COPY create-database.sql create-schema.sql insert-data.sql run-sql.sh ./
RUN chmod +x run-sql.sh

ENTRYPOINT ["./run-sql.sh"]

# docker build -t gcr.io/YOUR_PROJECT/init-db:latest . 
# OR
# docker build -t init-posdb . 

# docker push gcr.io/YOUR_PROJECT/init-db:latest

