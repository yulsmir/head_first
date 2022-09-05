class SmallOven
  attr_accessor :contents

  def turn_on
    puts "Turning oven on."
    @state = "on"
  end

  def turn_off
    puts "Turning oven off."
    @state = "off"
  end

  def bake
    unless @state == "on"
      raise "You need to turn the oven on first!"
    end
    if @contents == nil
      raise "There is nothing in the oven!"
    end
    "golden-brown #{contents}"
  end

  dinner = ['turkey', nil, 'pie']
  oven = SmallOven.new
  oven.turn_off
  dinner.each do |item|
    begin
      oven.contents = item
      puts "Serving #{oven.bake}"
    rescue => error
      puts "Error: #{error.message}"
    end
  end


end