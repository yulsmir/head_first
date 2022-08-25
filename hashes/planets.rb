class CelestialBody
  attr_accessor :type, :name
end

# default_body = CelestialBody.new
# default_body.type = 'planet'
# bodies = Hash.new(default_body)

bodies = Hash.new do |hash, key|
  body = CelestialBody.new
  body.type = 'planet'
  hash[key] = body
end

bodies['Mars'].name = 'Mars'
bodies['Europa'].name = 'Europa'
bodies['Europa'].type = 'moon'
bodies['Venus'].name = 'Venus'

puts bodies