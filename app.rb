require 'sinatra/base'

if development?
  require 'sinatra/reloader'
  require 'rack-livereload'
end

class App < Sinatra::Base

  configure do
    set :start_time, Time.now
  end

  configure :development do
    register Sinatra::Reloader
    use Rack::LiveReload
  end

  configure :production do
    before do
      last_modified settings.start_time
      etag settings.start_time.to_s
      cache_control :public, :must_revalidate, :max_age => 60
    end
  end

  helpers do
    def script_tag(file_name)
      path_prefix = '/assets/'
      %(<script src="#{path_prefix}#{file_name}.js"></script>)
    end
     
    def stylesheet_tag(file_name)
      path_prefix = '/assets/'
      %(<link rel="stylesheet" href="#{path_prefix}#{file_name}.css">)
    end
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
