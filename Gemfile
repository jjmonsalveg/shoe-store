source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.2'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# A simple Rails wrapper for Google Material Icons
gem 'material_icons'

#upload and managment files
gem 'carrierwave', '~> 1.0'
gem 'rmagick', '~> 2.13.4'

#serializers
gem 'active_model_serializers', '0.10.6'

#gem resolve api cross origen resource sharing
gem 'rack-cors', :require => 'rack/cors'

#data tables
gem 'rails-assets-jquery', source: 'https://rails-assets.org'
gem 'rails-assets-datatables', source: 'https://rails-assets.org'
gem 'kaminari' , '1.0.1'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]

  #test framework
  gem 'rspec-rails', '3.5.1'
  gem 'factory_girl_rails' , '4.8.0'

end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  #annotate models
  gem 'annotate', '2.7.2'

  #tools for debug
  gem 'better_errors', '2.3.0'
  gem 'binding_of_caller', '0.7.2'
  gem 'meta_request', '0.4.3'

  #reload changes in hot
  gem 'guard-livereload', '~> 2.5', require: false
  gem 'guard-rspec', require: false

end

group :test do
  #best way to thest associations
  gem 'shoulda-matchers', git: 'https://github.com/thoughtbot/shoulda-matchers.git', branch: 'rails-5'
  gem 'capybara', '2.15.1'
  gem 'launchy', '2.4.3'
  gem 'faker','1.8.4'
  gem 'ffaker', '2.6.0'
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
