# frozen_string_literal: true

source 'https://rubygems.org'

ruby '2.5.1'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'knock'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'rack-cors'
gem 'rails', '~> 5.2.1'
gem 'redis', '~> 4.0'
gem 'time_difference'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails', '~> 4.0'
  gem 'faker'
  gem 'rspec-rails', '~> 3.8'
  gem 'rubocop-rspec'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
