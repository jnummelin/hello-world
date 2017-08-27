require 'sinatra'
require 'socket'

hostname = Socket.gethostname
get '/' do
  erb :index, locals: {
    node: ENV['KONTENA_NODE_NAME'],
    hostname: hostname
  }
end