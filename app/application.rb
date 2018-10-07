class Application

  def call(env)
    resp = Rack::Response.new
    time = Time.now
    resp.write "Good Morning!"  if time.to_s.split(" ")[1].split(":")[0] < "12"
    resp.write "Good Afternoon!" if time.to_s.split(" ")[1].split(":")[0] >= "12"
    resp.finish
  end
end
