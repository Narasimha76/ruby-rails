# Specify the base image with the appropriate Ruby version
FROM ruby:3.3.3

# Set up your working directory inside the container
WORKDIR /myapp

# Copy Gemfile and Gemfile.lock to the container
COPY Gemfile Gemfile.lock ./

# Install Bundler and gems
RUN gem install bundler:2.5.13
RUN bundle install

# Copy the rest of your application code
COPY . .

# Specify the command to start your application
CMD ["rails", "server", "-b", "0.0.0.0"]
