require 'riak/test_server'

RSpec.configure do |config|
  config.before do
    unless $test_server
      begin
        config = YAML.load_file(File.expand_path("../test_server.yml", __FILE__))
        $test_server = Riak::TestServer.create(:root => config['root'],
                                               :source => config['source'],
                                               :min_port => config['min_port'] || 15000)
      rescue => e
        $stderr.puts "Can't run riak-sessions specs without the test server. Specify the location of your Riak installation in spec/support/test_server.yml"
        $stderr.puts e.inspect
        exit 1
      end
    end
    $test_server.start
  end

  config.after do
    $test_server.drop
  end

  config.after(:suite) do
    $test_server.stop
  end
end
