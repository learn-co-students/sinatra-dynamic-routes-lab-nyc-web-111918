require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @backwards_name = params[:name].reverse
    "#{@backwards_name}"
  end

  get "/square/:number" do
    @square = params[:number].to_i ** 2
    "#{@square.to_s}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
     "#{@phrase * @number}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get "/:operation/:number1/:number2" do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    case params[:operation]
    when "add"
      @final = @number1 + @number2
    when "subtract"
      @final = @number1 - @number2
    when "multiply"
      @final = @number1 * @number2
    when "divide"
      @final = @number1 / @number2
    end
    "#{@final}"
  end


end
