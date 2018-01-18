class Wizard

  attr_reader :name,
              :bearded


  def initialize(name, bearded = true)
    @name = name
    @bearded = bearded
    @count = 0


  end

  def bearded?
   if bearded == true
     true
   elsif bearded == false
     false
   end
  end

  def incantation(power)
    "sudo " + power
  end

  def rested?
    if cast >= 5
      false
    else
      true
    end
  end

  def cast

    "MAGIC MISSILE"
    @count += 1
  end


end
