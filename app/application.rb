class Application

  def call(env)

    resp = Rack::Response.new
    t = Time.now

    if t.hour.between?(0, 11)
    resp.write "Good, Morning!"
    else
    resp.write "Good, Afternoon!"
    end

    resp.finish
  end

end
