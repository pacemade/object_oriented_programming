require './paperboy.rb'


jimmy = Paperboy.new("Jimmy", 0, 0)

p jimmy.quota

p jimmy.deliver(1, 100)

p jimmy.quota

p jimmy

p jimmy.deliver(1, 25)

p jimmy

p jimmy.report
