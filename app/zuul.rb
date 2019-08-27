# frozen_string_literal: true

class Zuul #:nodoc:
  def initialize(app)
    @app = app
  end

  def call(env)
    "There is no #{env[:name]}. Only Zuul!"
  end
end
