source 'https://rubygems.org'

git_source(:github) do |repo_name|
	repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
	"https://github.com/#{repo_name}.git"
end

gem 'bootstrap', '~> 4.1.1'
gem 'bootstrap-datepicker-rails'
gem 'cancan', '~> 1.6', '>= 1.6.10'
gem 'carrierwave', '~> 1.2', '>= 1.2.3'
gem 'coffee-rails', '~> 4.2'
gem 'devise'
#gem 'devise_invitable', '~> 1.7', '>= 1.7.5'
gem 'fog-aws'
gem 'font-awesome-sass', '~> 5.0.13'
gem 'globalize', '~> 5.1.0'
gem 'i18n', '~> 1.0', '>= 1.0.1'
gem 'jbuilder', '~> 2.5'
gem 'jquery-fileupload-rails', '~> 0.4.7'
gem 'jquery-rails'
gem 'mini_magick', '~> 4.8'
gem 'popper_js', '~> 1.12.9'
gem 'rails', '~> 5.1.3'
gem 'trix'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'
gem 'sendgrid'
gem 'will_paginate', '~> 3.1', '>= 3.1.6'

group :development, :test do
	gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
	gem 'capybara', '~> 2.13'
	gem 'selenium-webdriver'
end

group :development do
	gem 'sqlite3', git: "https://github.com/larskanis/sqlite3-ruby", branch: "add-gemspec"
	gem 'web-console', '>= 3.3.0'
end

group :production do
	gem 'pg'
	gem 'rails_12factor'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]