
class Triangle
  # write code here
  attr_accessor :sideA, :sideB, :sideC

  def initialize(sideA,sideB,sideC)
    @sideA = sideA
    @sideB = sideB
    @sideC = sideC
  end

  def kind
    sum1 = self.sideA + self.sideB
    sum2 = self.sideB + self.sideC
    sum3 = self.sideA + self.sideC

    if(self.sideA <= 0 || self.sideB <= 0 || self.sideC <= 0 || sum1<=self.sideC || sum2<=self.sideA || sum3<=self.sideB )
      #begin
      
        raise TriangleError
      #rescue TriangleError => error
         # puts error.message
      #end
    elsif (self.sideA == self.sideB && self.sideB == self.sideC && self.sideA != 0)
        return :equilateral
      elsif (self.sideA==self.sideB || self.sideA==self.sideC || self.sideB == self.sideC)
            return :isosceles
        else
          return :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "There are not valid sizes"
    end
  end

end