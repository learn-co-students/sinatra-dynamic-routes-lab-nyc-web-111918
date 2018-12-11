require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name=params[:name]
    "#{@name.reverse}"
  end
  get '/square/:number' do
    @square=params[:number].to_i*params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @finalstring=""
    params[:number].to_i.times{@finalstring=@finalstring+params[:phrase]}
    @finalstring
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @finalstring=""
    params.each{|key, value|@finalstring=@finalstring+"#{value} "}
    @finalstring.rstrip+"."
  end
  get '/:operation/:number1/:number2' do
    @operation=params[:operation]
    @a=params[:number1].to_i
    @b=params[:number2].to_i
    if @operation=="add"
      "#{@a+@b}"
    elsif @operation=="subtract"
      "#{@a-@b}"
    elsif @operation=="multiply"
      "#{@a*@b}"
    elsif @operation=="divide"
      "#{@a/@b}"
    end
  end

end
