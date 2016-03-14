begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new

$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'weblinc/example_plugin/version'

desc "Release version #{Weblinc::ExamplePlugin::VERSION} of the gem"
task :release do
  host = "https://#{ENV['BUNDLE_GEMS__WEBLINC__COM']}@gems.weblinc.com"

  system "git tag -a v#{Weblinc::ExamplePlugin::VERSION} -m 'Tagging #{Weblinc::ExamplePlugin::VERSION}'"
  system 'git push --tags'

  system "gem build weblinc-example_plugin.gemspec"
  system "gem push weblinc-example_plugin-#{Weblinc::ExamplePlugin::VERSION}.gem --host #{host}"
  system "rm weblinc-example_plugin-#{Weblinc::ExamplePlugin::VERSION}.gem"
end


