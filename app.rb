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
  
  @all_phrases = ""
  for i in 1..@number
  @all_phrases += "#{@phrase}\n" 
  end
  @all_phrases
end


end
