source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.4'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.0'
# Assets
gem 'font-awesome-sass'
gem 'jquery-rails', '4.3.1'
gem 'bootstrap-sass'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Active Model has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Time zone
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# login
gem 'devise'

# UI/UX
gem 'slim-rails'
gem 'html2slim'
gem 'draper'

# Pagination
gem 'will_paginate',           '3.1.7'
gem 'bootstrap-will_paginate', '1.0.0'

group :production do 
end

group :development, :test do
  # Debugger
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'pry-rails'
  # Test
  gem 'rspec-rails', '~> 4.0.0.beta2'
  gem "factory_bot_rails", "~> 4.10.0"
  gem 'rails-controller-testing'
  # Code analyse
  gem 'rubocop-airbnb'
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara'
  gem 'webdrivers'
  gem 'faker'
end