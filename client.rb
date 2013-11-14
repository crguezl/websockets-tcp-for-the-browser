require 'eventmachine'
require 'em-http-request'
require 'em-http'

EventMachine.run do
  http = EventMachine::HttpRequest.new("ws://www.example.com:8080/websocket").get :timeout => 100
  http.errback { puts "oops" }
  http.callback {
    puts "WebSocket connected!"
    http.send("Hello client")
  }

  http.stream { |msg|
    puts "Recieved: #{msg}"
    
    http.send "Pong: #{msg}"
  }
end
