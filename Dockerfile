FROM python:3.5.10-buster

# Set default environment variables
ENV DB_HOST=localhost
ENV DB_NAME=odoo
ENV DB_USER=odoo
ENV DB_PASSWORD=odoo

RUN apt update && apt install -y gcc \
  wget \
  postgresql-client \
  python3-babel \
  python3-dateutil \
  python3-decorator \
  python3-docutils \
  python3-feedparser \
  python3-gevent \
  python3-html2text \
  python3-jinja2 \
  python3-lxml \
  python3-mako \
  python3-mock \
  python3-ofxparse \
  python3-passlib \
  python3-pil \
  python3-psutil \
  python3-psycopg2 \
  python3-pydot \
  python3-pyparsing \
  python3-pypdf2 \
  python3-reportlab \
  python3-requests \
  python3-serial \
  python3-suds \
  python3-tz \
  python3-usb \
  python3-vatnumber \
  python3-werkzeug \
  python3-xlsxwriter \
  python3-yaml \
  python3-num2words \
  node-less \
  wkhtmltopdf

RUN pip3 install phonenumbers


RUN wget https://nightly.odoo.com/11.0/nightly/deb/odoo_11.0.latest_all.deb -O odoo-11.deb

RUN dpkg -i odoo-11.deb

CMD ["odoo"]

EXPOSE 8069

