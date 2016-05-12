source 'https://rubygems.org'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '>= 5.0.0.beta4', '< 5.1'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'

gem 'figaro'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
gem 'oj'

# HTTP clients
gem 'faraday'
# gem 'faraday_middleware'

# Parsers
gem 'nokogiri'

##Model Attachments##
gem "paperclip", git: "git://github.com/thoughtbot/paperclip.git"
gem 'paperclip-meta'

gem 'kaminari'

gem 'devise', :github => 'plataformatec/devise', :branch => 'master'			#https://github.com/plataformatec/devise#getting-started
gem 'omniauth-facebook'						#
gem 'omniauth-vkontakte'					#
gem 'omniauth-500px'						  #

gem 'therubyracer',  platforms: :ruby

##API SDK##
gem 'f00px'
gem "flickr.rb"

gem "miro" 									#работа с изображениями
gem "color"
gem "color_namer"

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'awesome_pry' #pry, awesome_prints
  gem 'better_errors'
  gem "capistrano", "~> 3.4"
  gem 'capistrano-rails'
  gem 'capistrano-bundler'
  gem 'capistrano-rvm'
  gem 'capistrano3-puma'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
