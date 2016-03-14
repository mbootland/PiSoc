source 'https://rubygems.org'

ruby '2.2.2'

gem 'rails', '4.2.2'
gem 'pg'
# User auth with forgot password and signup functionality
gem 'devise'
# For deploying the server temporarily, required for viva
gem 'heroku'
gem 'bootstrap'
# Generates views with bootstrap styling
gem 'bootstrap-generators', '~> 3.3.4'
# For pagination
gem 'kaminari'
# Gem for getting usage history
gem 'vestal_versions', git: 'git://github.com/scottwillson/vestal_versions.git', branch: 'rails-4-1'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby
gem 'annotate', '~> 2.6.6'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
# Authorisation based on abilities of users/roles.
gem 'cancancan', '~> 1.10'
gem 'paperclip', '~> 4.3'
gem "fog-aws"

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'
# Model date validator
gem 'validates_timeliness', '~> 3.0'

# Use Capistrano for deployment
group :development do
  # gem 'capistrano',         require: false
  # gem 'capistrano-rvm',     require: false
  # gem 'capistrano-rails',   require: false
  # gem 'capistrano-bundler', require: false
  # gem 'capistrano3-puma',   require: false
end

group :development, :test do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :development, :test do
  gem 'rspec-rails', '~> 3.0'
end
