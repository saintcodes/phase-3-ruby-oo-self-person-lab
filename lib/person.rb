# your code goes here
class Person
  attr_accessor :bank_account, :happiness, :hygiene
  attr_writer 
  attr_reader :name

  def initialize(name, bank_account = 25)
    @name = name
    @bank_account = bank_account
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(num)
    @happiness = num.clamp(0, 10)
  end

  def hygiene=(num)
    @hygiene = num.clamp(0, 10)
  end

  def happy?
    happiness > 7 ? true : false
  end

  def clean?
    hygiene > 7 ? true : false
  end 

  def get_paid(amount)
    self.bank_account += amount
    "all about the benjamins"
  end 

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    self.happiness += 3
    person.happiness += 3
    "Hi #{person.name}! It's #{self.name}. How are you?"
  end 

  def start_conversation(person, topic)

    if topic == "politics"
      person.happiness -= 2
      self.happiness -= 2
      "blah blah partisan blah lobbyist"

    elsif topic == "weather"
      person.happiness += 1
      self.happiness += 1
      "blah blah sun blah rain"

    else 
      "blah blah blah blah blah"

    end
    # def politics
    #   person.happiness -= 2
    #   self.happiness -= 2
    #   "blah blah partisan blah lobbyist"
    # end

    # def weather
    #   person.happiness += 1
    #   self.happiness += 1
    #   "blah blah sun blah rain"
    # end 

    # def other
    #   "blah blah blah blah blah"
    # end 

    # if topic == "politics"

  end

end