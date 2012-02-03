source :rubygems

gem 'bundler'

if File.directory?(File.expand_path("../../riak-client", __FILE__))
  gem 'riak-client', :path => '../riak-client'
end

gemspec

platforms :mri do
  gem 'yajl-ruby'
end

platforms :jruby do
  gem 'json'
  gem 'jruby-openssl'
end
