class Cat
  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end
  def eats_at
    if @meal_time > 12
      return  "#{(@meal_time - 12)}PM"
    else
      return "#{@meal_time}AM"
    end
  end
  def meow
    puts "#{@name} eats at #{eats_at}"
  end
end

malasuerte = Cat.new('malasuerte', 'milk', 15)
puts malasuerte.meow

bubbles = Cat.new('bubbles', 'tuna', 9)
puts bubbles.meow
