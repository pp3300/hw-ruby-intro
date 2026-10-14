FROM ruby:3.3.8

RUN gem install bundler

WORKDIR /app

COPY Gemfile /app/
COPY lib/ /app/lib/
COPY spec/ /app/spec/
COPY ./run_specs.sh /app/

RUN sed -i 's/\r$//' ./run_specs.sh && chmod +x ./run_specs.sh
RUN bundle install

CMD ["/bin/bash", "./run_specs.sh"]
