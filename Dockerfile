FROM dart:stable AS build

WORKDIR /app

COPY website/* ./

RUN dart pub get

RUN dart pub global activate webdev

CMD ["webdev", "serve", "0.0.0.0:9000"]

EXPOSE 9000
