class Animal
  attr_accessor :name, :age

  def move(destination)
    puts "#{name} runs to #{destination}."
  end
end

class Armadillo < Animal
  def move(destination)
    puts "#{name} unrolls!"
    super
  end
end

poppo = Armadillo.new
poppo.name = "Poppo"
poppo.move('somewhere')
puts Animal.superclass