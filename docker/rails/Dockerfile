FROM ruby
RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime 
RUN apt-get update -qq && apt-get install -y build-essential nodejs vim
RUN apt-get install -y default-libmysqlclient-dev mysql-client
RUN apt-get install -y libpq-dev
ENV BUNDLE_JOBS=4 \
    APP_DIR=/app
RUN mkdir $APP_DIR
WORKDIR $APP_DIR
COPY src/Gemfile $APP_DIR
COPY src/Gemfile.lock $APP_DIR
RUN bundle install
