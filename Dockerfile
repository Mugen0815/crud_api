FROM python:3.9 
# Or any preferred Python version.

WORKDIR /
VOLUME /data
EXPOSE 8000/tcp

# Copy app
COPY app/ /app/
RUN ls --recursive /app/
WORKDIR /app

# Install dependencies
RUN pip install -r requirements.txt

# Run the app
COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]