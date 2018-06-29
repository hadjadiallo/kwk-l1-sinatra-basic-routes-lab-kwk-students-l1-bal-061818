require 'bundler'
Bundler.require
require_relative 'models/questions'

class App < Sinatra::Base
    
  get '/' do 
    erb :index
  end 
  
  get '/questions' do
    erb :questions
  end
  
  get '/oily' do 
    erb :oily 
  end
  
  get '/dry' do
     erb :dry
  end 
  
  post '/results' do
  answers = params.values
  @user_input = Array.new
  answers.each do |answers|
  @user_input.push(answers)
  end

@skin = skin_determinant(@user_input)
  if @skin == "oily"
    erb :oily 
  elsif @skin == "dry"
    erb :dry
  elsif @skin == "combinational"
    erb :combinational
  else @skin == "balanced"
    erb :balanced
  end
  end
end

