class OrangeTree
  attr_accessor :fruits, :age

  def initialize
    @age = 0
    @height = 0
    @fruits = 0
  end

  def height
    if age.zero?
      @height
    elsif @age.positive? && @age < 10
      @height = @height + 1
    elsif @age >= 10
      @height = 10
    end
  end

  def dead?
    @age > 50
  end

  def one_year_passes!
    @age = @age + 1
    @fruits = 0
    if @age > 5 && @age < 10
      @fruits += 100
    elsif @age >= 10 && @age < 15
      @fruits += 200
    elsif @age > 15
      @fruits = 0
    end
  end

  def pick_a_fruit!
    @fruits = @fruits - 1 if @fruits.positive?
  end
end
