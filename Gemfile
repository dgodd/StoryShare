source 'https://rubygems.org'

gem 'rails', '3.2.0'
gem 'json'
gem 'heroku'
gem 'thin'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'anjlab-bootstrap-rails', '>= 2.0', :require => 'bootstrap-rails'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end

gem 'devise',           '~> 2.0.0'
gem 'devise_invitable', :git => 'https://github.com/scambra/devise_invitable.git'
gem 'cancan'
gem 'omniauth-facebook'
gem 'omniauth-twitter'
gem 'omniauth-google'

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
