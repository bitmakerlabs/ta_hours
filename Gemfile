source 'https://rubygems.org'

gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :development do
  gem 'sqlite3'
  gem 'pry'
  gem 'pry-rails'
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :production do
  gem 'pg'
end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'jquery-ui-sass-rails'
gem 'bootstrap-timepicker-rails'

gem 'haml-rails'

gem 'libv8', '~> 3.11.8'
gem "therubyracer"
gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
gem "twitter-bootstrap-rails"
gem 'thin'

gem 'newrelic_rpm'
gem 'omniauth'
gem 'omniauth-github'
gem 'rolify'

group :tools do
  gem 'guard'
  gem 'guard-livereload'
  gem 'rb-fsevent', :require => false
end

group :test, :development do
  gem 'guard-rspec'
  gem "rspec"
  gem "rspec-rails"
  gem 'capybara'
  gem 'capybara-webkit'
end