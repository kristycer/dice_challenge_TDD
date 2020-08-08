class Dice
    def initialize
    @total_result = []
    end 
  def roll
    [1, 2, 3, 4, 5, 6].sample
  end   

  def number_of_dice(num)
    num.times { 
        @total_result << roll 
    }
  end 
  def total_result 
    @total_result
  end

end

