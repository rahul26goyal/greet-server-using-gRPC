this_dir = File.expand_path(File.dirname(__FILE__))
lib_dir = File.join(this_dir, 'lib')
$LOAD_PATH.unshift(lib_dir) unless $LOAD_PATH.include?(lib_dir)

#puts "this_dir:::#{this_dir}"
#puts "$LOAD_PATH::#{$LOAD_PATH}"
require 'grpc'
require 'greeter-service_services_pb'
      
class GreeterServiceHandler < Helloworld::Greeter::Service
  def say_hello(req, _unused_call)
    puts "say_hello..calleed...."
    Helloworld::HelloResponse.new(message: "Hi #{req.name}..Hoow r u?")
  end
end