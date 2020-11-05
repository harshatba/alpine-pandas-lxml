FROM nickgryg/alpine-pandas:3.7.4

RUN apk --update add --no-cache g++

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /usr/src/app

ENV PYCURL_SSL_LIBRARY=openssl

RUN apk update && apk add --no-cache libcurl && apk add --no-cache --virtual .build-dependencies build-base curl-dev \
    && pip install pycurl \
    &&  apk add  --update --no-cache postgresql-dev gcc python3-dev musl-dev jpeg-dev zlib-dev \
    libgcc libstdc++ libx11 glib libxrender libxext libintl \
    ttf-dejavu ttf-droid ttf-freefont ttf-liberation ttf-ubuntu-font-family \
    freetype-dev jpeg-dev libxslt-dev

RUN wget -O /bin/wkhtmltopdf https://project-management-repo.s3.ap-south-1.amazonaws.com/wkhtmltopdf && chmod +x /bin/wkhtmltopdf

RUN pip install lxml==4.5.2
RUN pip install Pillow==7.1.2