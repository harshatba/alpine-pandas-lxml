FROM python:3.7.4-alpine3.10

RUN apk --update add --no-cache g++

RUN pip install pandas

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

ENV PYCURL_SSL_LIBRARY=openssl

RUN apk update && apk add --no-cache libcurl && apk add --no-cache --virtual .build-dependencies build-base curl-dev \
    && pip install pycurl \
    &&  apk add  --update --no-cache postgresql-dev gcc python3-dev musl-dev jpeg-dev zlib-dev \
    libgcc libstdc++ libx11 glib libxrender libxext libintl \
    ttf-dejavu ttf-droid ttf-freefont ttf-liberation ttf-ubuntu-font-family \
    freetype-dev jpeg-dev libxslt-dev

RUN wget -O /bin/wkhtmltopdf https://project-management-repo.s3.ap-south-1.amazonaws.com/wkhtmltopdf && chmod +x /bin/wkhtmltopdf

RUN pip install aiohttp==3.7.3
RUN pip install amqp==2.5.2
RUN pip install asgiref==3.2.3
RUN pip install async-timeout==3.0.1
RUN pip install attrs==20.3.0
RUN pip install backcall==0.2.0
RUN pip install beautifulsoup4==4.9.3
RUN pip install billiard==3.6.3.0
RUN pip install boto3==1.12.21
RUN pip install botocore==1.15.49
RUN pip install CacheControl==0.12.6
RUN pip install cachetools==4.1.1
RUN pip install celery==4.4.2
RUN pip install certifi==2020.4.5.1
RUN pip install chardet==3.0.4
RUN pip install decorator==4.4.2
RUN pip install Django==3.0.3
RUN pip install django-amazon-ses==3.0.2
RUN pip install django-anymail==8.1
RUN pip install django-array-field-select==0.2.0
RUN pip install django-cors-headers==3.2.1
RUN pip install django-filter==2.2.0
RUN pip install django-hosts==4.0
RUN pip install django-json-widget==1.0.0
RUN pip install django-restql==0.11.0
RUN pip install django-sendgrid-v5==0.9.0
RUN pip install django-storages==1.9.1
RUN pip install djangorestframework==3.11.0
RUN pip install docopt==0.6.2
RUN pip install docutils==0.15.2
RUN pip install elasticsearch==7.8.0
RUN pip install elasticsearch-dsl==7.2.1
RUN pip install firebase-admin==4.4.0
RUN pip install future==0.18.2
RUN pip install geoip2==4.1.0
RUN pip install google-api-core==1.23.0
RUN pip install google-api-python-client==1.12.8
RUN pip install google-auth==1.22.1
RUN pip install google-auth-httplib2==0.0.4
RUN pip install google-auth-oauthlib==0.4.1
RUN pip install google-cloud-core==1.4.3
RUN pip install google-cloud-firestore==2.0.1
RUN pip install google-cloud-storage==1.33.0
RUN pip install google-crc32c==1.0.0
RUN pip install google-resumable-media==1.1.0
RUN pip install googleapis-common-protos==1.52.0
RUN pip install grpcio==1.33.2
RUN pip install gspread==3.6.0
RUN pip install gunicorn==20.0.4
RUN pip install httplib2==0.18.1
RUN pip install idna==2.9
RUN pip install importlib-metadata==1.6.0
RUN pip install ipython==7.19.0
RUN pip install ipython-genutils==0.2.0
RUN pip install jedi==0.17.2
RUN pip install jmespath==0.10.0
RUN pip install kombu==4.6.8
RUN pip install lxml==4.5.2
RUN pip install maxminddb==2.0.3
RUN pip install msgpack==1.0.0
RUN pip install multidict==5.0.2
RUN pip install num2words==0.5.9
RUN pip install oauth2client==4.1.3
RUN pip install oauthlib==3.1.0
RUN pip install Pillow==7.1.2
RUN pip install parso==0.7.1
RUN pip install pexpect==4.8.0
RUN pip install pickleshare==0.7.5
RUN pip install prompt-toolkit==3.0.8
RUN pip install proto-plus==1.11.0
RUN pip install protobuf==3.14.0
RUN pip install psycopg2==2.8.4
RUN pip install ptyprocess==0.6.0
RUN pip install pyasn1==0.4.8
RUN pip install pyasn1-modules==0.2.8
RUN pip install pycparser==2.20
RUN pip install pycurl==7.43.0.5
RUN pip install Pygments==2.7.3
RUN pip install PyJWT==1.7.1
RUN pip install pyPEG2==2.15.2
RUN pip install python-dateutil==2.8.1
RUN pip install python-http-client==3.3.1
RUN pip install python-pptx==0.6.18
RUN pip install python-slugify==4.0.0
RUN pip install pytz==2019.3
RUN pip install redis==3.5.3
RUN pip install requests==2.24.0
RUN pip install requests-oauthlib==1.3.0
RUN pip install rsa==4.6
RUN pip install s3transfer==0.3.3
RUN pip install sendgrid==6.4.7
RUN pip install sentry-sdk==0.16.0
RUN pip install six==1.14.0
RUN pip install soupsieve==2.0.1
RUN pip install sqlparse==0.3.0
RUN pip install starkbank-ecdsa==1.1.0
RUN pip install text-unidecode==1.3
RUN pip install traitlets==5.0.5
RUN pip install typing-extensions==3.7.4.3
RUN pip install uritemplate==3.0.1
RUN pip install urllib3==1.25.9
RUN pip install vine==1.3.0
RUN pip install watchtower==0.8.0
RUN pip install wcwidth==0.2.5
RUN pip install webencodings==0.5.1
RUN pip install xlrd==1.2.0
RUN pip install XlsxWriter==1.3.6
RUN pip install yarl==1.6.3
RUN pip install zipp==3.1.0
