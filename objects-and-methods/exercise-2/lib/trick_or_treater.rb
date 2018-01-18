class TrickOrTreater
  attr_reader :bag,
              :sugar_level

  def initialize(costume)
    @costume = costume
    @bag = []
    @sugar_level = 0
  end

  def dressed_up_as
    @costume.style
  end

  def has_candy?
    if bag.empty?
      false
    else
      true
    end
  end

  def candy_count
    bag.count
  end

  def eat
    candy = bag.pop
    @sugar_level += candy.sugar
  end



end
