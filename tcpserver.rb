#!/usr/bin/ruby
require = 'socket'
server = TCPServer.new('localhost',8080)
loop {
	client = server.accept
	client.puts(Time.now.ctime)
	client.puts "Closing the connect. Bye"
	client.close
}
