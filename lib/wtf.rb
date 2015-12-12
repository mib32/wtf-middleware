class Wtf
  def initialize(app)
    @app = app
  end

  def call(env)
    request = Rack::Request.new(env)
    Rails.application.routes.recognize_path request.path
    @app.call(env)
  end
end
