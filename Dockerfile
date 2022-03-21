FROM ruby:2.7.5
RUN apt-get update -qq && apt-get install -y nodejs npm
RUN npm -global install yarn
WORKDIR /app
COPY Gemfile Gemfile.lock ./
RUN bundle install
#RUN rake assets:precompile
#EXPOSE 3000
#CMD ["rails", "server", "-b=0.0.0.0", "-e=production"]
#CMD ["rails", "server", "-b=0.0.0.0"]
#CMD ["rails", "server"]