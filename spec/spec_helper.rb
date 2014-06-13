$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', '..', 'riak-client','lib'))

require 'rubygems' # Use the gems path only for the spec suite
require 'riak'
%w{rails action_pack action_dispatch action_controller action_view}.each {|f| require f }
require 'riak-sessions'
require 'rspec'

Dir.glob('./spec/support/**/*.rb').each { |f| require f }

RSpec.configure do |config|
  config.mock_with :rspec

  config.include TestServerSupport

  config.before(:each) do
    fail "Test server not working: #{test_server_fatal}" if test_server_fatal

    test_server.create unless test_server.exist?
    test_server.start
  end

  config.after(:each) do
    if test_server && !test_server_fatal && test_server.started?
      test_server.drop
    end
  end

  config.after(:suite) do
    $test_server.stop if $test_server
  end
end
