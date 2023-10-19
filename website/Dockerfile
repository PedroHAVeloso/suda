FROM dart:stable

RUN dart pub global activate webdev

COPY . .

RUN dart pub get

CMD [ "webdev", "serve", "--hostname", "0.0.0.0" ]  