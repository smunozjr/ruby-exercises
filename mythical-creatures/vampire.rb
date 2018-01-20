class Vampire
  attr_writer :name
              # :pet

  def initialize(name, pet = "bat")
    @name = name
    @pet = pet
    @thirsty = "hello"
  end

  def thirsty?
    @thirsty
  end

  def drink
    @thirsty = "goodbye"
  end

  def pet=(poop)
    @pet = poop
  end

  def pet
    @pet
  end 

  # def name
  #   puts "inside_name"
  #   @name
  # end
  #
  # def name=(poop)
  #   puts "inside_set_bar"
  #   @name = poop
  # end




end
