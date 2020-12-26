source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'image_processing', '~> 1.12', '>= 1.12.1'
gem 'jbuilder', '~> 2.7'
gem 'puma', '~> 4.1'
gem 'rails', '~> 6.0.3', '>= 6.0.3.4'
gem 'redis', '~> 4.2', '>= 4.2.5'
gem 'sass-rails', '>= 6'
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 4.0'

# Gems for railsdevs project
# Authentication
gem 'devise', '~> 4.7', '>= 4.7.3'
# Make slugs more human
gem 'friendly_id', '~> 5.4', '>= 5.4.1'
# Render SVGs from file
gem 'inline_svg', '~> 1.7', '>= 1.7.2'
# Fast pagination
gem 'pagy', '~> 3.10'
# Payment with Stripe and Braintree
gem 'pay', '~> 2.3', '>= 2.3.1'
# Database using Postgresql
gem 'pg', '>= 0.18', '< 2.0'
# Background job queuing service
gem 'sidekiq', '~> 6.1', '>= 6.1.2'
# Rails forum
gem 'simple_discussion', '~> 1.2'
# Charge with Stripe
gem 'stripe', '~> 5.28'
# Listen for Stripe events
gem 'stripe_event', '~> 2.3', '>= 2.3.1'
# Cronjob
gem 'whenever', '~> 1.0'

group :development, :test do
  gem 'annotate', '~> 3.1', '>= 3.1.1'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'faker', '~> 2.15', '>= 2.15.1'
  # Useful for debugging
  gem 'pry-rails', '~> 0.3.9'
end

group :development do
  gem 'listen', '~> 3.2'
  gem 'name_of_person', '~> 1.1', '>= 1.1.1'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
