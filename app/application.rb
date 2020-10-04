# if its before noon greet the user with "Good Morning!"
#if its afternooon greet the user with 
#Good Afternoon!" 
#Remember that getting the time may return results in 24 hour time!
#Anytime on or after 12 is the afternoon
require 'rack'
class Application 

    def call(env)
        resp = Rack::Response.new
        t = Time.now
        

        
        if t.hour >= 12 
            resp.write "Good Afternoon!"
        else  
            resp.write "Good Morning!"
        end 
                       
        resp.finish 
    end 
    
end 