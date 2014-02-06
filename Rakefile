require "bundler/gem_tasks"

require "rspec/core/rake_task"
RSpec::Core::RakeTask.new(:spec)

gemspec = eval(File.read("church_search.gemspec"))

task :build => "#{gemspec.full_name}.gem"

file "#{gemspec.full_name}.gem" => gemspec.files + ["church_search.gemspec"] do
  system "gem build church_search.gemspec"
  system "gem install church_search-#{ChurchSearch::VERSION}.gem"
end
