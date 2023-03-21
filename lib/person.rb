# your code goes here
require "pry"

class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(num)
    if (num >= 0 && num <= 10)
      @happiness = num
    elsif (num > 10)
      @happiness = 10
    elsif (num < 0)
      @happiness = 0
    end
  end

  def hygiene=(num)
    if (num >= 0 && num <= 10)
      @hygiene = num
    elsif (num > 10)
      @hygiene = 10
    elsif (num < 0)
      @hygiene = 0
    end
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(amount)
    @bank_account += amount
    "all about the benjamins"
  end

  def take_bath
    # binding.pry
    self.hygiene = (self.hygiene + 4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene = (self.hygiene - 3)
    self.happiness = (self.happiness + 2)
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness = (self.happiness + 3)
    friend.happiness = (friend.happiness + 3)
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    case topic
    when "politics"
      self.happiness = (self.happiness - 2)
      friend.happiness = (friend.happiness - 2)
      "blah blah partisan blah lobbyist"
    when "weather"
      self.happiness = (self.happiness + 1)
      friend.happiness = (friend.happiness + 1)
      'blah blah sun blah rain'
    else 
      'blah blah blah blah blah'
    end
  end
end

bob = Person.new("Bob")
