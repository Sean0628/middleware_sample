# frozen_string_literal: true

class Shout #:nodoc:
  def initialize(app)
    @app = app
  end

  def call(env)
    @app.call(env).upcase
  end
end
