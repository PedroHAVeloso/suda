FROM dart:stable

RUN dart pub global activate dart_frog_cli

WORKDIR /app

COPY . .

RUN dart pub get

CMD [ "dart_frog", "dev", "-p 8080" ]