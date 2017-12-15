require './bankaccount.rb'

danny = Bankaccount.new(1000)

danny.deposit = 1000
puts danny.balance
danny.deposit = 1000
puts danny.balance
danny.withdraw = 1000
puts danny.balance
danny.gain_interest = 10
puts danny.balance
