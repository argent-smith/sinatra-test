$:.unshift File.dirname(__FILE__)

require "bundler/setup"

def command string
  system "bundle exec #{string}"
end

task :default => "bdd:features"

desc "Start the app"
task :serve do
  require "app"
  App.run!
end

namespace :bdd do
  desc "Run the Cucumber against the Features"
  task :features do
    command "cucumber"
  end

  desc "Runs the features cyclically"
  task :autotest do
    command "env AUTOFEATURE=true autotest"
  end
end
