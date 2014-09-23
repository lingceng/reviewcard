source 'https://rubygems.org'

ruby '2.1.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.4'
# Use sqlite3 as the database for Active Record
# gem 'sqlite3'

# change to use postgres
gem 'pg'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# Unicorn Server
gem 'unicorn'

# For heroku deploy
group :production, :staging do
  gem 'rails_12factor'
end

group :development, :test do
  # Quiet assets turn off rails assets log like:
  # Started GET "/assets/jquery.js?body=1"
  # for 127.0.0.1 at 2012-11-20 17:05:52 +0800
  gem "quiet_assets", "~> 1.0.2"

  # Better error page for Rails and other Rack apps
  # https://github.com/charliesome/better_errors
  gem "better_errors"

  # Retrieve the binding of a method's caller.
  # Can also retrieve bindings even further up the stack.
  # better_errors use this to display local variables on error pages
  gem "binding_of_caller"

  # generate test factories
  gem 'factory_girl_rails'
end


# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer',  platforms: :ruby
# Less support
gem "less-rails"

# Bootstrap css and js
# use build version to avoid glyphicons problem
# gem "twitter-bootstrap-rails", :git => 'git://github.com/seyhunak/twitter-bootstrap-rails.git'
#
# local dev
# gem "twitter-bootstrap-rails", :path => '../twitter-bootstrap-rails'
#
# use lingceng version to fix span_error
gem "twitter-bootstrap-rails", :git => 'git://github.com/lingceng/twitter-bootstrap-rails.git'


# HTML template language
gem 'haml', '~> 4.0.5'

# User Authentication
gem 'devise'

# render markdown
gem 'redcarpet'

# nprogress
# pajax or turbolinks load progress
gem 'nprogress-rails'

# jQuery plugin for drop-in fix binded events problem caused by Turbolinks
gem 'jquery-turbolinks'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

