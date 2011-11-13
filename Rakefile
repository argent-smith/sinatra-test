require "bundler/setup"

def command string
  system %q(bundle exec #{string})
end

task :default => :serve

desc "Start the app"
task :serve do
  command "thin start"
end
