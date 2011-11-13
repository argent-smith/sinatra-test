$:.unshift File.dirname(__FILE__)

require "bundler/setup"

def command string
  system "bundle exec #{string}"
end

task :default => :features

desc "Start the app"
task :serve do
  require "app"
  App.run!
end

desc "Run the Cucumber against the Features"
task :features do
  command "cucumber"
end
