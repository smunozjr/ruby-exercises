class Dragon
  attr_reader  :name,
               :color,
               :rider


def initialize (name, color, rider)
  @name = name
  @color = color
  @rider = rider
  @hungry = true
  @eat = 0
end

def hungry?
  if @eat >= 3
    return false
  else return true
  end
end

def eat
  @eat += 1

end


end
