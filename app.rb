require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
    "Wahoo your name is backwards #{@name}"
  end

  get '/square/:number' do
    @square_num = params[:number].to_i * params[:number].to_i
    "Answer: #{@square_num}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    i = 0
    @answer = []
    until i >= @number
      @answer << @phrase
      i+= 1
    end
    @answer.join(' ')
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = params[:word1] + ' ' + params[:word2] + ' ' + params[:word3] + ' ' + params[:word4]+ ' ' + params[:word5]
    "Yo look at these words, #{@words}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    if @operation == "add"
      @answer = @number1 + @number2
    elsif @operation == "subtract"
        @answer = @number1 - @number2
    elsif @operation == "multiply"
      @answer = @number1 * @number2
    else
      @operation == "divide"
      @answer = @number1 / @number2
    end
    "Your answer is: #{@answer}"
  end

end #end of App class
