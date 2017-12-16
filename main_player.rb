require './player.rb'

jun_tao = Player.new(0, 0, 0)



20.times do
  jun_tao.collect_treasure
  p jun_tao
end

200.times do
  jun_tao.fight
  p jun_tao
end
