
require 'pry'

class Person
  attr_reader :name, :happiness
  attr_accessor :hygiene, :bank_account



@@all = []

  def initialize(name, bank_account= 25, happiness= 8, hygiene=8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene


    @@all << self
  end



#INSTANCE

  def happiness=(num)
    if num > 10
      @happiness = 10
    elsif num < 0
      @happiness = 0
    else
      @happiness = num
  end
end


    if @happiness = 0
      false
    else
      true
    end
  end

    # def happy_level
    #   if @happiness >= 10
    #     @happiness = 10
    #   elsif @happiness <= 0
    #     @happiness = 0
    #   else
    #
    #   end
    # end



  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def get_paid(salary_amt)
    @bank_account += salary_amt
      "all about the benjamins"
  end

  def take_bath
    @hygiene += 4
      "♪ Rub-a-dub just relaxing in the tub ♫"
      # if ---
    end

  def work_out #self.happiness same as @happiness
    @happiness += 2
      @hygiene -= 3
        "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness = (happiness += 3)
      friend.happiness = (happiness += 3)
         "Hi Felix! It's Stella. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == politics
      self.happiness && friend.happiness = (happiness -= 1)
        "blah blah partisan blah lobbyist"
      elsif
        topic == weather
          self.happiness && friend.happiness = (happiness += 1)
          "blah blah sun blah rain"
        else
          "blah blah blah blah blah"
    end
  end

#CLASS


  def self.all
    @@all
  end



end
































# The happiness and hygiene points should be able to change, however the maximum and minimum points for both happiness and hygiene should be 10 and 0 respectively
# The amount in the bank account should also be able to change, though it has no max or min.
