require 'bundler'
Bundler.require
require_relative 'models/stockgetter.rb'
require_relative 'models/stock.rb'

class MyApp < Sinatra::Base

  get '/home' do
    @stocks = Stock.all
    erb :index
  end

end