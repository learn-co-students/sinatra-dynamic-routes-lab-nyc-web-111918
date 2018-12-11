require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i ** 2
    "#{@num.to_s}"
  end

  get '/say/:number/:phrase' do
    result = ""
    params[:number].to_i.times do
      result += params[:phrase]
    end
    result
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == 'add'
      "#{params[:number1].to_i + params[:number2].to_i}"
    elsif params[:operation] == 'subtract'
      "#{params[:number1].to_i - params[:number2].to_i}"
    elsif params[:operation] == 'multiply'
      "#{params[:number1].to_i * params[:number2].to_i}"
    else
      "#{params[:number1].to_i / params[:number2].to_i}"
    end
  end


end # end of App class
