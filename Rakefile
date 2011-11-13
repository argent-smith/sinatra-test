$:.unshift File.dirname(__FILE__)

require "bundler/setup"

def command string
  system "bundle exec #{string}"
end

task :default => :serve

desc "Start the app"
task :serve do
  require "app"
  App.run!
end
