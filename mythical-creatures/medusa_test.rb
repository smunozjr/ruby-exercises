gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'medusa'

class MedusaTest < Minitest::Test
  def test_it_has_a_name
    medusa = Medusa.new("Cassiopeia")
    assert_equal "Cassiopeia", medusa.name
  end

  def test_when_first_created_she_has_no_statues
    # medusa is the intance of Medusa Class
    # medusa is a Medusa object
    medusa = Medusa.new("Cassiopeia")

    # calling the statues method on object medusa
    # statues method returns an Array
    statues = medusa.statues

    # call the empty? method the Array above
    # empty? returns a  boolean
    statues_is_empty = statues.empty?

    # boolean above gets passed in the assert method
    # assert method will either fail or pass
    assert statues_is_empty
    #method     parameter

    #All of the above is the exact same thing as:
    #assert medusa.statues.empty?
  end

  def test_when_staring_at_a_person_she_gains_a_statue
    medusa = Medusa.new("Cassiopeia")
    victim = Person.new("Perseus")

    medusa.stare(victim)
    assert_equal 1, medusa.statues.count
    assert_equal "Perseus", medusa.statues.first.name
  end

  def test_when_staring_at_a_person_that_person_turns_to_stone
    medusa = Medusa.new("Cassiopeia")
    victim = Person.new("Perseus")
    # when we call the new method we create a new object and call that object initialize method
    refute victim.stoned?
    medusa.stare(victim)
    assert victim.stoned?
  end

  def test_can_only_have_three_victims
    medusa = Medusa.new("Cassiopeia")
    victim1 = Person.new("Perseus")
    victim2 = Person.new("Justin")
    victim3 = Person.new("Hercules")
    victim4 = Person.new("Taylor")

    medusa.stare(victim1)
    medusa.stare(victim2)
    medusa.stare(victim3)

    assert_equal 3, medusa.statues.count

    medusa.stare(victim4)

    assert_equal 3, medusa.statues.count
  end

  def test_if_a_fourth_victim_is_stoned_first_is_unstoned
    medusa = Medusa.new("Cassiopeia")
    victim1 = Person.new("Perseus")
    victim2 = Person.new("Justin")
    victim3 = Person.new("Hercules")
    victim4 = Person.new("Taylor")

    medusa.stare(victim1)
    medusa.stare(victim2)
    medusa.stare(victim3)
    medusa.stare(victim4)

    refute victim1.stoned?
    assert victim4.stoned?

  end

end
