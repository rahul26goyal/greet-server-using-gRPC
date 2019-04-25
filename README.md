# greet-server-using-gRPC
A simple Greeting Server Implementation using Google RPC Framework



## How to test this code?
1. Clone the repo.
2. cd `greet-server-using-gRPC`
3. use ruby version > 2.3
  1. What I used is `ruby 2.5.1p57 (2018-03-29 revision 63029) [x86_64-darwin16]`
  2. Use rvm to install this. 
  3. `rvm install  2.5.1 `
  4. `rvm use  ruby-2.5.1`
  5. If you are facing issue, refer rvm website for help or google :)
4. `grpc_tools_ruby_protoc -I ./protos --ruby_out=lib --grpc_out=lib ./protos/greeter-service.proto`
5. `ruby greeter-server.rb`
6. Open another tab, and execute: `ruby greeter-client.rb`
7. You should see the output message.

Reference: https://grpc.io/docs/quickstart/ruby.html
