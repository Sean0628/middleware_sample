# frozen_string_literal: true

class Talk #:nodoc:
  def call(env)
    "Can I talk to #{env[:name]}?"
  end
end
