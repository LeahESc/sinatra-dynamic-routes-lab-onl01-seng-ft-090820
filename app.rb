require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do 
    @name = params[:name].reverse 
    "#{@name}"
  end 

  get '/square/:number' do 
    @num = params[:number].to_i**2
    "#{@num}"
  end 
  
    get '/say/:number:phrase' do 
      @num = params[:number].to_i
      @phrase = params[:phrase].split("%20")
      @num.times do 
        "#{@phrase}"
       end 
    end 

    get '/say/:word1/:word2/:word3/:word4/:word5'
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} + #{@word2} +  #{@word3} + #{@word4} + #{@word5}"
  end 

end