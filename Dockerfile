FROM ruby:2.5.1

RUN apt-get update
RUN apt-get install -y nodejs
RUN gem install bundler -v 1.17.3
# RUN apt-get install -y default-mysql-client
RUN apt-get install -y sqlite
RUN apt-get install -y netcat
RUN apt-get install -y dos2unix

RUN echo "export PATH=\"$PATH:/usr/local/bundle/bin\"" >> ~/.bashrc

WORKDIR /app
COPY Gemfile* /app/
# RUN bundle lock --add-platform x86-mingw32 x86-mswin32 x64-mingw32 java
RUN bundle update mimemagic
# RUN bundle install
COPY . /app

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
RUN dos2unix /usr/bin/entrypoint.sh
ENTRYPOINT [ "entrypoint.sh" ]

EXPOSE 3000
# WORKDIR /app/app
CMD ["rails", "server", "-b", "0.0.0.0"]