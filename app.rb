# coding: utf-8

require "rubygems"
require "bundler/setup"
require "sinatra"
require "haml"

module Helpers
  def utf_in_ruby
    "Русская строка в Ruby"
  end
end

class App < Sinatra::Base
  get "/" do
    haml :index_no_utf
  end

  get "/utf_in_ruby" do
    haml :index_utf_ruby
  end

  get "/utf_in_haml" do
    haml :index_utf_haml
  end

  get "/utf_in_ruby_and_haml" do
    haml :index_utf_ruby_haml
  end

  include Helpers
end

