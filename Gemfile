source 'https://rubygems.org'

gem 'rails', '3.2.0'
gem 'json'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end

gem 'devise'
gem 'cancan'
gem 'omniauth-facebook'
gem 'omniauth-twitter'

gem 'jquery-rails'
gem 'haml-rails'
gem 'chronic'

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'sqlite3'
end

group :test do
  gem 'factory_girl_rails'
  gem 'capybara'
end

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug'