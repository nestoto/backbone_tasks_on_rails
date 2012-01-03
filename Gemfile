source 'http://rubygems.org'

gem 'rails', '3.1.3'
gem 'client_side_validations'
gem 'thin'
gem 'heroku'
gem 'devise'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'rspec-rails', '2.6.1'
  gem 'sqlite3'
  gem 'spork', '0.9.0.rc8'
  gem 'webrat', '0.7.1'
  gem 'factory_girl_rails', '1.0'
  gem 'annotate',:git => 'git://github.com/jeremyolliver/annotate_models.git', :branch => 'rake_compatibility' 
end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.5'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
  gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test do
  # Pretty printed test output
  gem 'turn', '~> 0.8.3', :require => false
end