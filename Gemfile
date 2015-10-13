source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'
# Use sqlite3 as the database for Active Record in dev, Postgres in production
gem 'pg'
gem 'sqlite3'
# Utilize paranoia, which enables soft delets in Active Record
gem "paranoia", "~> 2.0"
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

#debug helper
gem "awesome_print"

# annotate puts comments on the schema of the models
gem 'annotate'

# CASino for CAS authentication
gem 'casino', github: "rbCAS/CASino"
gem 'casino-activerecord_authenticator', github: "rbCAS/casino-activerecord_authenticator"

# ActiveAdmin backend for admins
gem 'activeadmin', github: 'activeadmin'
gem 'devise'
gem 'devise_cas_authenticatable'

# Gems for Loggly
gem 'syslogger', '~> 1.6.0'
gem 'lograge', '~> 0.3.1'

# Rollbar for Exception management
gem 'rollbar', '~> 2.2.1'

group :development do
	# Guard runs rspec on file changes
	gem 'guard-rspec', require: false
	gem 'capistrano', '~> 3.4.0'
	gem 'capistrano-rvm'
	gem 'capistrano-bundler', '~> 1.1.2'
	gem 'capistrano-rails', '~> 1.1'
	gem 'capistrano-passenger'
end

group :development, :test do
  	# Mock model data with Factory_Girl
  	gem 'factory_girl_rails'
  	# Fuzz and generate random fake data
  	gem 'faker'
  	# run tests with RSpec
  	gem 'rspec-rails', '~> 3.0'
end

group :production do
	# run on Passenger
	gem 'passenger'
end

# CodeClimate test reporting
gem "codeclimate-test-reporter", group: :test, require: nil