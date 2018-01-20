class Medusa

  attr_reader :name

  def initialize(name)
    @name = name
    @statues = []
  end

  def statues
    @statues
  end

  def stare(person)
    @statues << person
    person.person_is_stoned
    if @statues.count > 3
      @statues.shift.person_unstoned
    end
  end

end

 class Person

   attr_reader :name

   def initialize(name)
     @name = name
     @stoned = false
   end

   def stoned?
     @stoned
   end

   def person_is_stoned
     @stoned = true
   end

   def person_unstoned
     @stoned = false
   end
 end
