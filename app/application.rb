require 'rack'

class Application
  def call(env)
    resp = Rack::Response.new
    resp.write('Good Morning!') if Time.now.strftime("%p") == 'AM'
    resp.write('Good Afternoon!') if Time.now.strftime("%p") == 'PM'
    resp.finish
  end
end