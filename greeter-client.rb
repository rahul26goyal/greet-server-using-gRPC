this_dir = File.expand_path(File.dirname(__FILE__))
lib_dir = File.join(this_dir, 'lib')
$LOAD_PATH.unshift(lib_dir) unless $LOAD_PATH.include?(lib_dir)

require 'grpc'
require 'greeter-service_services_pb'

def start_application
  stub = Helloworld::Greeter::Stub.new('localhost:50051', :this_channel_is_insecure)
  user = "Rahul Goyal"
  requestMessage = Helloworld::HelloRequest.new(name: user)
  requestObj = stub.say_hello(requestMessage)
  response = requestObj.message
  puts "Greeting: #{response}"
  
end

start_application