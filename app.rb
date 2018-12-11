require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    num_squared = (@number**2)
    num_squared.to_s
  end

  get '/say/:number/:phrase' do
    phrase = ""
    (params[:number].to_i).times do
      phrase += "#{params[:phrase]}\n"
    end
    phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @opertion = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    result = '?'

    case params[:operation]
    when 'add'
      result = (@number1 + @number2).to_s
    when 'subtract'
      result = (@number1 - @number2).to_s
    when 'multiply'
      result = (@number1 * @number2).to_s
    when 'divide'
      (@number2 != 0) ? (result = (@number1 / @number2).to_s ) : "You can't divide by 0! <a href='https://en.wikipedia.org/wiki/Division_by_zero'>Here's Why!</a>"
    end
  end

end
