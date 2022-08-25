greetings = Hash.new do |hash, key|
  hash[key] = "Hi, #{key}!"
end

p greetings['Ola']