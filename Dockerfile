FROM python:3.7-alpine
WORKDIR /code
COPY cloud /cloud
ENTRYPOINT ["/cloud"]
