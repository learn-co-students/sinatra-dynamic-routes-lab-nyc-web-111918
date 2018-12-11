require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
    # binding.pry
  end

  get '/square/:number' do
    @square = (params[:number].to_i**2).to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    # binding.pry
    @phrase = params[:phrase]
    @array = []
    @number.times do
      @array << @phrase
    end
    @array.join("<br>")
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
  @array =[@word1 = params[:word1],
    @word2 = params[:word2],
    @word3 = params[:word3],
    @word4 = params[:word4],
    @word5 = params[:word5]]

    "#{@array.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    case @operation
    when "add"
      output = @number1 + @number2
    when "subtract"
      output = @number1 - @number2
    when "multiply"
      output = @number1 * @number2
    when "divide"
      output = @number1 / @number2
    else
      output = "You didn't put in 'add', 'subtract', 'multiply', or 'divide', try again."
    end
    output.to_s
  end

end
