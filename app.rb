require "rubygems"
require "bundler/setup"
require "sinatra"
require "haml"

class App < Sinatra::Base
  get "/" do
    haml "%p no UTF"
  end
end
