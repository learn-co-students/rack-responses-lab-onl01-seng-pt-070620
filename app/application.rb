class Application

    def call(env)
        resp = Rack::Response.new
        now = Time.now
        if now.hour < 12
            resp.write "Good morning"
        else
            resp.write "Good afternoon"
        end
        resp.finish
    end
    
end