require 'rubygems'
require 'sinatra'
require 'haml'

get '/' do
  redirect('/chunky/bacon')
end

get '/style.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass :style
end

get '/chunky/bacon' do
  @title = 'Chunky Bacon!'
  @logo = '/images/bacon.jpg'
  haml(:bacon)
end
