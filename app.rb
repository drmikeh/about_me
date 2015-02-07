require 'sinatra'
require 'sass'
require 'bourbon'
require 'neat'

get('/styles/main.css') do
  content_type 'text/css', charset: 'utf-8'
  scss :'../public/styles/main'
end

get '/' do
  erb :home
end
