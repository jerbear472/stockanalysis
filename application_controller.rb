require 'bundler'
Bundler.require
require_relative 'models/stockgetter.rb'
require_relative 'models/stock.rb'

class MyApp < Sinatra::Base

  get '/home' do
    @stockgetter=Stockgetter.new
    @stocks = Stock.all
    erb :index
  end

  get '/stocks' do
    @stocks = Stock.all
    erb :tenplate
  end

end