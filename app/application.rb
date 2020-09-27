class Application
  
def call(env)
    return [ 200, {'Content-Type' => 'text/html'}, greeting ]
  end
  
  def greeting
    t = Time.now
    (t.hour >=  12) ?  ["<em>Good Afternoon!<em>"] : ["<em>Good Morning!<em>"]
  end
end