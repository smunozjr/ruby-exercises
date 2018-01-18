require './lib/candy'
require 'pry'

class Bag

  attr_reader :candies

  def initialize
    @empty = true
    @candies = []
    @count = 0
  end

  def empty?
    if candies.empty?
      @empty = true
    else
      @empty = false
    end
  end

  def <<(candy)
    candies << candy
  end

  def count
    candies.count
  end

  def type
    candy.type
  end

  def contains?(type)
    # binding.pry
    candies.map do |candy|
      if type == candy.type
        return true
      else
        return false
      end
    end
  end

  def grab(type)
    candies.each do |candy|
       if candy.type == type
        return candies.delete(candy)
      end
    end
  end

  def take(candy)
    candies.pop(candy)
  end






end
