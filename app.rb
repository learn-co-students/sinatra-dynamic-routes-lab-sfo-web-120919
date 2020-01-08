require_relative 'config/environment'
class App < Sinatra::Base
  
  get '/reversename/:name' do
    @backwards = params[:name].reverse
    @backwards
  end

  get '/square/:number' do
    @squared = params[:number].to_i * params[:number].to_i
    @squared.to_s 
  end

  get '/say/:number/:phrase' do
   
    @num = params[:number].to_i
    @str = ''
    @num.times do
      @str += params[:phrase] + ' '
    end
    @str
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params[:word1] + ' ' + params[:word2] + ' ' + params[:word3] + ' ' + params[:word4] + ' ' + params[:word5] + '.'
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i 
    @result
    if params[:operation] == "add"
      @result = num1 + num2
    elsif params[:operation] == "subtract"
        @result = num1 - num2
    elsif params[:operation] == "divide"
          @result = num1/num2
    elsif params[:operation] == "multiply"
            @result = num1 * num2
    end
    @result.to_s    
  end
end