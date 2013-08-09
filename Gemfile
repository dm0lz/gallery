source 'https://rubygems.org'

ruby "2.0.0"
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Use sqlite3 as the database for Active Record
gem 'sqlite3', group: :development

gem 'mysql2', group: :production


# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

gem 'compass-rails', github: 'milgner/compass-rails', branch: 'rails4'

gem 'zurb-foundation'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

gem 'devise'

gem 'carrierwave'
gem 'rmagick'

gem 'jquery-fileupload-rails'

gem 'friendly_id', github: 'FriendlyId/friendly_id', branch: 'master'

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
gem 'capistrano', group: :development
gem 'rvm-capistrano', group: :development
gem 'puma'

# Use debugger
# gem 'debugger', group: [:development, :test]

gem 'rspec-rails', group: [:development, :test]
gem 'pry-rails', group: [:development, :test]
gem 'factory_girl_rails', group: [:development, :test]

group :test do
	# to downgrade
	gem 'cucumber',  '1.2.5'
	gem 'cucumber-rails', '1.3.0', :require => false
	#gem 'cucumber-rails', :require => false
	gem 'capybara'
	gem 'database_cleaner', git: 'https://github.com/tommeier/database_cleaner', branch: 'fix-superclass'
	gem 'email_spec'
	gem 'shoulda-matchers'
end

gem 'spork', group: :test
gem 'spork-rails', :github => 'sporkrb/spork-rails'



gem 'guard-rspec', group: [:development, :test]
gem 'guard-cucumber', group: [:development, :test]
gem 'guard-spork', group: [:development, :test]






