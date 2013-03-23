require 'bundler'
Bundler.require

module AssetHelpers
  def css_path(source)
    "/stylesheets/#{source}"
  end
  def js_path(source)
    "/javascripts/#{source}"
  end
  def image_path(source)
    "/images/#{source}"
  end
end

class App < Sinatra::Base

  configure :development do
    require 'rake-pipeline'
    require 'rake-pipeline/middleware'
    use Rake::Pipeline::Middleware, 'Assetfile'
    require 'rack-livereload'
    use Rack::LiveReload
  end

  helpers do
    include AssetHelpers
  end

  get "/" do
    slim :home
  end

  get "/resume" do
    slim :resume
  end

  not_found do
    slim :not_found
  end
end
