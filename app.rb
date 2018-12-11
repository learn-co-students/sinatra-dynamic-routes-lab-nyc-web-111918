require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/' do
    "Hello World"
  end

get '/reversename/:name' do
  @name = params[:name]
  erb :namereverse
end

  get '/square/:number' do
    #binding.pry
    @num = params[:number].to_i
    erb :square
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]

    erb :say
    #bindnig.pry
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do

  @wrd1 = params[:word1]
  @wrd2 = params[:word2]
  @wrd3 = params[:word3]
  @wrd4 = params[:word4]
  @wrd5 = params[:word5]

  erb :sayword
end

get '/:operation/:number1/:number2' do
  @num1 = params[:number1].to_i
  @num2 = params[:number2].to_i

  erb :operation
end

end 
