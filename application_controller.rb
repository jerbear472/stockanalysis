require 'bundler'
Bundler.require
require_relative 'models/stockgetter.rb'
require_relative 'models/stock.rb'

class MyApp < Sinatra::Base

  get '/' do
    @stockgetter=Stockgetter.new
    @stocks = Stock.all
    erb :stockform
  end

  post '/' do
    @stockgetter=Stockgetter.new
    @stock = Stock.all.select {|s| s.name == params[:stock]}.first
    erb :stock 
  end

  get '/stocks' do
    @stocks = Stock.all
    erb :tenplate
  end

  get '/about' do
    erb :about
  end
end