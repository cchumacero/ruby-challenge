require 'socket'
require 'json'
server = TCPServer.new(8085)
loop do
session = server.accept
objeto = {}
objeto['random'] = rand(101)
response = "HTTP/1.1 200\n\n#{objeto}"
session.puts(response)
session.close
end
