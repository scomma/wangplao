source 'https://rubygems.org'

gem 'rails', '3.2.8'
gem 'pg'
gem 'jquery-rails'
gem 'anjlab-bootstrap-rails', require: 'bootstrap-rails'
gem 'haml'
gem 'haml-rails'
gem 'hashie'
gem 'squeel'

group :development do
  gem 'quiet_assets'

  gem 'hirb'
  gem 'pry'
  gem 'pry-doc'
  gem 'pry-rails'
  gem 'ruby-debug-pry', require: 'ruby-debug/pry'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'debugger'
  gem 'machinist'
  gem 'faker'
end

group :test do
  gem 'shoulda-matchers'
  gem 'database_cleaner'
  gem 'simplecov', require: false
  gem 'capybara'
end

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier',     '>= 1.0.3'
end

group :staging, :production do
  gem 'thin'
end
