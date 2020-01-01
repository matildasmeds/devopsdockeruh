FROM ruby:2.6.0
RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev nodejs npm && \
    rm -rf /var/lib/apt/lists/*

WORKDIR rails_app
ENV RAILS_ENV=production
ENV RAILS_SERVE_STATIC_FILES=true
COPY . .
RUN npm install -y yarn -g
RUN bundle install
RUN rails db:migrate
RUN bundle exec rake assets:precompile
EXPOSE 3000
CMD RAILS_LOG_TO_STDOUT=true rails s -e production
