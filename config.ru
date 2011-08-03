require 'rubygems'
require 'bundler'
Bundler.setup

require 'sinatra/base'
require './tinker'

Dir[Tinker.root(["routes", "*.rb"])].each do |route_file|
  require route_file
  mod_name = Tinker.classify(File.basename(route_file, ".rb")) + "Routes"
  Tinker::App.send(:register, Tinker.const_get(mod_name))
end

run Tinker::App