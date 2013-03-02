source :rubygems

ruby '1.9.3'

gem 'rake'
gem 'sinatra', '1.3.3'
gem 'sprockets', '~> 2.0'
gem 'thin'
gem 'slim'
gem 'sass'
gem 'coffee-script'
gem 'yui-compressor'
gem 'net-ssh'
gem "therubyracer", :require => 'v8'

group :development, :test do
  gem 'sinatra-reloader'
  gem 'guard'
  gem "guard-livereload"
  gem "rack-livereload"
end

group :development do
  gem 'rb-fsevent', :require => false
end

group :test do
  gem 'rspec'
  gem 'rack-test', :require => "rack/test"
end