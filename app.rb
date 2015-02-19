require 'sinatra'
require 'sass'
require 'bourbon'
require 'neat'
require 'coffee'

configure do
  set :scss, style: :compressed, debug_info: false
end

get('/styles/:name.css') do |name|
  content_type :css, charset: 'utf-8'
  scss "../public/styles/#{name}".to_sym, layout: false
end

get '/scripts/navigation.js' do
  content_type 'text/javascript'.to_sym
  coffee '../public/scripts/navigation'.to_sym, layout: false
end

get '/scripts/tabs.js' do
  content_type 'text/javascript'.to_sym
  coffee '../public/scripts/tabs'.to_sym, layout: false
end

get '/' do
  erb :home
end

get '/work' do
  erb :work
end

get '/contact' do
  erb :contact
end

get '/random' do
  erb :random
end
