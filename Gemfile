source 'http://rubygems.org'

gem 'rails', '3.1.0'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

#12.1.2012
#http://devcenter.heroku.com/articles/how-do-i-use-sqlite3-for-development
#gem 'sqlite3'

group :production do
  gem 'pg'
end
group :development, :test do
  gem 'sqlite3'
end
##12.1.2012


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

gem 'jquery-rails'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :development do
  gem 'annotate', '2.4.0'
end

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end
