source :rubygems

gem 'bundler'

if ENV['TRAVIS']
  gem 'riak-client', :git => "git://github.com/basho/riak-ruby-client.git"
else
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
