source 'https://rubygems.org'

git_source(:github) do |repo_name|
	repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
	"https://github.com/#{repo_name}.git"
end

gem 'bootstrap', '~> 4.1.1'
gem 'carrierwave', '~> 1.2', '>= 1.2.3'
gem 'coffee-rails', '~> 4.2'
gem 'devise'
gem 'font-awesome-sass', '~> 5.0.13'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem "passenger"
gem 'popper_js', '~> 1.12.9'
gem 'rails', '~> 5.1.3'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'
gem 'sqlite3'

group :development, :test do
	gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
	gem 'capybara', '~> 2.13'
	gem 'selenium-webdriver'
end

group :development do
	gem 'web-console', '>= 3.3.0'
end

group :production do
	gem 'rails_12factor'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
