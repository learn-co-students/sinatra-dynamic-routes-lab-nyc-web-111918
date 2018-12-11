require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name].split('').reverse.join('')
    "#{@name}"
  end

  get '/square/:number' do
    @square = params[:number].to_i ** 2
    "#{@square.to_s}"
  end

  get '/say/:number/:phrase' do
    str = ""
    @num = params[:number].to_i
    @num.times do
      str += params[:phrase]
    end
    str
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if params[:operation] == 'add'
      ans = params[:number1].to_i + params[:number2].to_i
    elsif params[:operation] == 'subtract'
      ans = params[:number1].to_i - params[:number2].to_i
    elsif params[:operation] == 'multiply'
      ans = params[:number1].to_i * params[:number2].to_i
    else
      ans = params[:number1].to_i / params[:number2].to_i
    end
    ans.to_s
  end

end
