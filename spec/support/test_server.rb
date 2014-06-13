require 'riak/test_server'

module TestServerSupport
  def test_server
    unless $test_server
      begin
        $test_server = Riak::TestServer.new(
          root:     '/tmp/riak-sessions-test',
          source:   File.dirname(`which riak`),
          min_port: 15000 )
      rescue SocketError => e
        warn "Couldn't connect to Riak TestServer! #{$test_server.inspect}"
        warn_crash_log
        $test_server_fatal = e
      rescue => e
        warn e.inspect
        warn_crash_log
        $test_server_fatal = e
      end
    end
    $test_server
  end

  def test_server_fatal
    $test_server_fatal
  end

  def warn_crash_log
    if $test_server && crash_log = $test_server.log + 'crash.log'
      warn crash_log.read if crash_log.exist?
    end
  end
end
