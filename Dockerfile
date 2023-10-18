FROM dart:stable AS build

RUN dart pub global activate webdev
RUN dart pub global activate dotenv

WORKDIR /app

COPY ./* ./

RUN CD website
RUN dart pub get
RUN CD ..

RUN CD api
RUN dart pub get
RUN CD ..

RUN CD embedded
RUN dart pub get
RUN CD ..

CMD ["webdev", "serve", "0.0.0.0:9000"]

EXPOSE 9000
