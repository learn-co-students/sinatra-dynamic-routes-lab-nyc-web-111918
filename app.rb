require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    square = params[:number].to_i * params[:number].to_i
    square.to_s
  end

  get '/say/:number/:phrase' do
    phrase = ''
    (params[:number].to_i).times do
       phrase += "#{params[:phrase]}\n"
      #binding.pry
    end
    phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do

    add_words = params[:word1] + ' ' +params[:word2] + ' ' + params[:word3] + ' ' + params[:word4] + ' ' +params[:word5] + '.'
    add_words
  end

  get '/:operation/:number1/:number2' do
    answer = nil
    case params[:operation]
    when 'add'
      answer = params[:number1].to_i + params[:number2].to_i
    when 'multiply'
      answer = params[:number1].to_i * params[:number2].to_i
    when 'divide'
      answer = params[:number1].to_i / params[:number2].to_i
    when 'subtract'
      answer = params[:number1].to_i - params[:number2].to_i
    end
    answer.to_s
  end


end
