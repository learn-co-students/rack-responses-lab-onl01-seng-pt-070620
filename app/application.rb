require 'rack'
require 'pry'

class Application
    def call(env)
        resp = Rack::Response.new
        time = Time.now.to_s.split(" ")[1].split(":")[0].to_i

        if time < 12
            resp.write "Good Morning!"
        elsif time >= 12
            resp.write "Good Afternoon!"    
        end
        resp.finish #response cannot send without being finished
    end
end

