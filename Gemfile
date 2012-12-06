source 'https://rubygems.org'

gem 'rails', '3.2.8'

group :development, :test do
  gem 'rspec-rails', '~>2.11.0'
  gem 'guard-rspec', '~> 0.7.2'
  gem "fakefs", :require => "fakefs/safe"
  gem 'factory_girl_rails', '~> 4.0.0'
end

group :development do
  gem 'annotate', '~> 2.4.1.beta'
  gem 'mysql2', '~> 0.3.10'
  # gem 'sqlite3', '1.3.6'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '3.2.4'
  gem 'coffee-rails', '3.2.2'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby
  # Nice default styling
  gem 'twitter-bootstrap-rails', '~> 2.1.0'
  gem 'uglifier', '1.2.3'
end

gem 'jquery-rails', '2.0.0'

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

# parallel processing and background tasks
# gem 'amqp', '0.8.0'
#gem 'parallel'
gem 'delayed_job_active_record', '~> 0.3.0'
#gem 'sidekiq', '~> 2.1.1'
gem 'clockwork', '~> 0.4.1'
#gem 'sinatra', require: false
#gem 'slim'
gem 'daemons'


gem 'carrierwave' # file uploads
gem 'curb', '0.8.1'     # curl integration
gem 'anemone', '0.7.2'  # web crawling integration
gem 'treat', '1.1.2'    # NLP integration
gem 'paper_trail'      # data auditing
gem 'devise', '2.1.0'  # user authentication
gem 'cancan', '1.6.8'   # user roles
gem 'rails_admin', '0.0.5'  # admin
# gem 'will_paginate', '~> 3.0' # pagination
gem 'crummy', '~> 1.6.0'     # breadcrumbs
gem 'rubyzip'    # zip creation
gem 'rghost', '~> 0.8.7.8' # convert files to PDF/a
gem 'galetahub-simple_captcha', require: 'simple_captcha'   # captcha
gem 'active_attr' # Helps use Active Record without actually creating a table (ie contact form validation)
gem 'mini_magick', '3.4'  # wrapper for imagemagick command line.  Convert images to JPEG2000
gem 'bagit', require: 'validatable'
# gem 'natcmp', '~> 1.4.1' # Allows "natural sorting" 1,2,10 instead of 1,10,2

group :test do
  gem 'capybara', '1.1.2'
  gem 'faker', '~> 1.0.1'
  gem 'shoulda-matchers'
  gem 'database_cleaner', '~> 0.7.2'
  gem 'launchy', '~> 2.1.0'
  gem 'rb-fsevent', '0.4.3.1', :require => false
  gem 'growl', '1.0.3'
  gem 'sqlite3', '1.3.6'
end

group :production do
  gem 'mysql2', '~> 0.3.10'
end
