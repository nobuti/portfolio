require 'rubygems'
require 'bundler'

Bundler.require

require "./app"

map '/assets' do
  environment = Sprockets::Environment.new
  environment.append_path 'assets/stylesheets'
  environment.append_path 'assets/javascript'
  environment.append_path 'assets/images'

  if production? 
    environment.js_compressor = YUI::JavaScriptCompressor.new
    environment.css_compressor = YUI::CssCompressor.new 
  end 

  run environment
end

map '/' do
  run App
end