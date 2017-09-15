FROM fedora:latest
MAINTAINER stuaxo <stuaxo2@yahoo.com>

ENV document_root /var/www/homework/public_html

RUN dnf install -y \
    nginx \
    python3 \
    python3-flask \
    uwsgi-plugin-python3 \
    mailcap # for /etc/mime.types

RUN adduser web

RUN mkdir -p $document_root
RUN chown -R web:web $document_root
RUN chmod 755 $document_root

RUN mkdir /app
COPY homework /app/homework
RUN chown -R web:web /app
USER web

WORKDIR /app/homework/homework

EXPOSE 12345
CMD uwsgi --socket 0.0.0.0:12345 --protocol=http --ini=homework.ini --plugin python3
