require './lib/candy'
require 'pry'

class Bag

  attr_reader :candies

  def initialize
    @empty = true
    @candies = []
  end

  def empty?
    candies.empty?
  end


  def <<(candy)
    candies << candy
  end

  def count
    candies.count
  end

  def contains?(type)
    candies.map do |candy|
      if candy.type == type
        return true
      else
        return false
      end
    end
  end

  # def contains?(type)
  #   candies.any? do |candy|
  #     candy.type == type
  #   end
  # end






end
