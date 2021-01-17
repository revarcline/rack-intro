require 'rack'

# gotta respond to the call
class MyServer
  def call(_env)
    [200, { 'Content-Type' => 'text/html' }, pretty_response]
  end

  def pretty_response
    (Time.now.to_i % 2).zero? ? ['<em>Hello</em'] : ['<strong>Hello</strong>']
  end
end

run MyServer.new
