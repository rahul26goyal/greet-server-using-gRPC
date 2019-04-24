
require 'grpc'
require_relative './greeter-service-handler'

def start_server
  g_server = GRPC::RpcServer.new
  g_server.add_http2_port('0.0.0.0:50051', :this_port_is_insecure)
  g_server.handle(GreeterServiceHandler)
  puts "server started..."
  g_server.run_till_terminated_or_interrupted([1, 'int', 'SIGQUIT'])
  puts "server stoopped..."
end

puts "start server.."
start_server