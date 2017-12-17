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
    total = ( end_address - start_address ) + 1
    counter = 0
    if total >= 50
      @exp = @exp + ( (total - 50) / 2 )
        until ( 50 + @exp ) == counter
          @earnings = 0.25 * total
          counter +=1
        end
        @earnings = @earnings + ( @earnings * 0.50 )
    else
        @earnings = ( 0.25 * total ) - 2
    end
    "#{@name} earned #{@earnings}"
  end

  def report
    "My name is #{@name}, I've delivered #{@exp} papers and earned #{@earnings}"
  end



end
#
# 0.25 for every paper they deliver and $0.50 for every paper over their quota.
# If at the end of the day they haven't met their quota, they lose $2.
