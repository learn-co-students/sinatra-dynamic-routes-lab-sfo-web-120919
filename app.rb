require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
get '/reversename/:name' do
  @name = params[:name].reverse
  "#{@name}"
end

get '/square/:number' do
  @square = (params[:number].to_i) * (params[:number].to_i)
  "#{@square.to_s}"
end

get '/say/:number/:phrase' do 
 repeated_phrase = ''

 params[:number].to_i.times do 
  repeated_phrase += params[:phrase]
 end
repeated_phrase
end

get '/say/:word1/:word2/:word3/:word4/:word5' do
  "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."

end

get '/:operation/:number1/:number2' do
  num1 = params[:number1].to_i
  num2 = params[:number2].to_i

  if params[:operation] == 'multiply'
    answer = num1 * num2
    answer.to_s
  elsif params[:operation] == 'divide'
    answer = num1 / num2
    answer.to_s
  elsif params[:operation] == 'add'
    answer = num1 + num2
    answer.to_s
  elsif params[:operation] == 'subtract'
    answer = num1 - num2
    answer.to_s
  end
end

end