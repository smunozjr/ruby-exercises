class Pirate

  attr_reader :name,
              :job,
              :booty
def initialize(name, job = "Scallywag", booty = 0)
  @name = name
  @job = job
  @count = 0
  @booty = 0
end

def cursed?
  if commit_heinous_act <= 6
    false
  else
    true
  end
end

def commit_heinous_act
  @count += 1
end

def rob_ship?
  @booty += 1
end






end
