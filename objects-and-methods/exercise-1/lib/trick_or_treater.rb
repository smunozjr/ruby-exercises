require './lib/bag'

class TrickOrTreater


  attr_reader :costume,
              :bag

  def initialize(costume)
    @costume = costume
    @bag = []
  end

  def dressed_up_as
    costume.style
  end

  def empty?
    !bag.empty?
  end

  def has_candy?
    empty?
  end

  def candy_count
    bag.count
  end

  def eat
    bag.pop
  end

end
