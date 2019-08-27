# frozen_string_literal: true

require './app/talk.rb'
require './app/shout.rb'
require './app/zuul.rb'

def run_the_stack(middleware, app, env)
  prev_app = app
  middleware.reverse.each do |part|
    part = part.new(prev_app)
    prev_app = part
  end

  prev_app.call(env)
end

puts run_the_stack [Zuul, Shout], Talk.new, name: 'Dana'
