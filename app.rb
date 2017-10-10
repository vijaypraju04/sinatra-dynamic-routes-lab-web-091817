require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @name = params[:name].reverse
  end

  get "/square/:number" do
    @square = (params[:number].to_i ** 2).to_s
  end

  get "/say/:number/:phrase" do
    str = " "
    params[:number].to_i.times do
      str += params[:phrase]
    end
    str
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @sentence = params[:word1] + " " +  params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
  end

  get "/:operation/:number1/:number2" do
    operation = params[:operation]

    if operation == "add"
      (params[:number1].to_i + params[:number2].to_i).to_s
    elsif operation == "subtract"
      (params[:number1].to_i - params[:number2].to_i).to_s
    elsif operation == "divide"
      (params[:number1].to_i / params[:number2].to_i).to_s
    elsif operation == "multiply"
      (params[:number1].to_i * params[:number2].to_i).to_s
    else
      answer = "Unable to perform this operation"
    end
  end
end
