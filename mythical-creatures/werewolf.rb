class Werewolf

  attr_reader :name,
              :location


  def initialize(name, location = "London")
    @name = name
    @location = location
    @human = true
    @change = true
  end

  def human?
    @human
  end

  def change!
    @human = false
  end

  def wolf?
    @change
  end

if human changes one 

end
