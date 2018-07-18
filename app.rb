require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

get '/reversename/:name' do
 @name = params[:name]
 @reversed_string = @name.reverse
 
 "Your reversed string is #{@reversed_string}."
end 

get '/square/:number' do
  @number = params[:number].to_i
  @squared_number = @number * @number
  
  "Your squared number is #{@squared_number}."
end 

get '/say/:number/:phrase' do
  @number = params[:number].to_i
  @phrase = params[:phrase]
   @everthing = []
   x = 0 
  until x == @number
   @everthing << @phrase
   x += 1 
  end 
   "#{@everything}"
end

get '/say/:word1/:word2/:word3/:word4/:word5' do
  "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
end 

get '/:operation/:number1/:number2' do
  

end
