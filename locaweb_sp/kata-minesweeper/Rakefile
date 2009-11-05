require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "--format progress"
  t.rcov = false
end

task :default => :features do
  puts
  puts
  puts "Features passed OK. Now what does your flog look like? (Hint: low is good)"
  puts
  system("flog #{File.dirname(__FILE__)}/lib/*.rb")
end