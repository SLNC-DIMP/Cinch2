source 'https://rubygems.org'

gem 'rails', '3.2.7'

group :development, :test do
  gem 'rspec-rails', '2.10.0'
  gem "fakefs", :require => "fakefs/safe"
end

group :development do
  gem 'annotate', '~> 2.4.1.beta'
  gem 'mysql2', '~> 0.3.10'
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
gem 'parallel'
gem 'delayed_job_active_record', '~> 0.3.0'
# gem 'sidekiq'

# curl integration
gem 'curb', '0.8.1'

# web crawling integration
gem 'anemone', '0.7.2'

# NLP integration
gem 'treat', '1.1.2'

# data auditing
gem 'paper_trail'

# user authentication
gem 'devise', '2.1.0'

# user roles
gem 'cancan', '1.6.8'

# admin
gem 'rails_admin', '0.0.5'

# pagination
gem 'kaminari', '0.13.0'

# breadcrumbs
gem 'crummy', "~> 1.6.0"

# zip creation
gem 'rubyzip'

# convert files to PDF/a
gem 'rghost', "~> 0.8.7.8"

# convert images to JPEG2000
#gem 'rmagick', "2.13.1"

group :test do
  gem 'capybara', '1.1.2'
  gem 'sqlite3', '1.3.6'
end

group :production do
  gem 'mysql2', '~> 0.3.10'
end
