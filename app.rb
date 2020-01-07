require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/reversename/:name" do
    "#{params[:name].reverse}" 
  end

  get "/say/:number/:phrase" do
    new_array = []
    i = 0
    while i < params[:number].to_i
      new_array << params[:phrase]
      i += 1
    end
    new_array.join(' ')
  end

  get "/square/:number" do
    "#{params[:number].to_i * params[:number].to_i}"

  end

  get "/:operation/:num1/:num2" do
    @operation = params[:operation]
    if params[:operation] == "add"
       "#{params[:num1].to_i + params[:num2].to_i}" 
    elsif 
      params[:operation] == "subtract"
      "#{params[:num1].to_i -  params[:num2].to_i}"
    elsif 
      params[:operation] == "multiply"
      "#{params[:num1].to_i * params[:num2].to_i}"
    elsif 
      params[:operation] == "divide"
      "#{params[:num1].to_i / params[:num2].to_i}" 
    end

  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5]}."
  end

end