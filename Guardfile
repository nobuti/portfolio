require './app'

guard 'livereload', :grace_period => 0.5 do
  watch(%r{^app\.rb})
  watch(%r{views/.+\.(slim)$})
  watch(%r{assets/.+\.(scss)$})
end