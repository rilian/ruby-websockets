require_relative 'web_socket_server'

server = WebSocketServer.new

puts "Server #{server.inspect}"

loop do
  Thread.new(server.accept) do |connection|
    puts 'Connected'
    while (message = connection.recv)
      puts "Received #{message}"
      connection.send("Received #{message}. Thanks!")
    end
  end
end
