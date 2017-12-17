class Paperboy

  def initialize(name, exp, earnings)
    @name = name
    @exp = exp
    @earnings = earnings
  end

  def quota
    quota = 50
      if @exp > 0
        quota = ( @exp / 2 ) + 50
      end
    "#{@name}'s quota is #{quota}'"
  end

  def deliver(start_address, end_address)
    @exp = ( end_address - start_address ) / 2
  end

end
#
# 0.25 for every paper they deliver and $0.50 for every paper over their quota.
# If at the end of the day they haven't met their quota, they lose $2.
