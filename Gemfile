source 'https://rubygems.org'

gem 'rails', '6.0.0.rc1'
gem 'devise'

gem 'turbolinks'
gem 'jquery-rails'
gem 'redis'
gem 'cancancan'
gem 'rails-controller-testing'

gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'jbuilder', git: 'https://github.com/rails/jbuilder'
gem 'will_paginate'

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :development do
  gem 'web-console'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  # gem 'byebug'
  gem 'sqlite3'
  # 3/22/2019: Modified following rspec section.
  gem 'rspec-rails', git: 'https://github.com/rspec/rspec-rails', branch: '4-0-dev'
  gem 'rspec-core', git: 'https://github.com/rspec/rspec-core'
  gem 'rspec-mocks', git: 'https://github.com/rspec/rspec-mocks'
  gem 'rspec-support', git: 'https://github.com/rspec/rspec-support'
  gem 'rspec-expectations', git: 'https://github.com/rspec/rspec-expectations'

  gem 'factory_bot_rails'
  gem 'database_cleaner'
  gem 'rubocop-rspec'
end

group :production do
  gem 'rails_12factor'
  gem 'pg'
end

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
#
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
#
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
