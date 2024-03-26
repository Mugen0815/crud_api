# GITHUB-repo: https://github.com/Mugen0815/crud_api

Example `docker-compose.yml`:

```yaml
version: '3'

services:
  web:
    image: mugen0815/djangorest
    ports:
      - "8000:8000"
    volumes:
      - db:/data # Mount the volume to persist the data
    command: python manage.py runserver 0.0.0.0:8000

volumes:
  db:
```


Example `docker-compose.yml  for developing`:

```yaml
version: '3'

services:
  web:
    build: .
    ports:
      - "8000:8000"
    volumes:
      - ./db:/data # Mount the volume to persist the data
      - ./app:/app # Mount the app directory to the container
    command: python manage.py runserver 0.0.0.0:8000

```






