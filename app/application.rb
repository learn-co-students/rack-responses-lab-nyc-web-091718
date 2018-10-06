class Application
  def call(env)
    resp = Rack::Response.new

    time =Time.now
    # Time.now returns (2018-10-06 14:16:21 -0400) but Time.now.hour returns just the hour (14)
    if time.hour < 12
        resp.write "Good Morning!"
      else
        resp.write "Good Afternoon!"
    end

    resp.finish
  end
end #end Application class
