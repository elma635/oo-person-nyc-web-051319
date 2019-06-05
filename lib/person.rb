require 'pry'

class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account



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

  def hygiene=(num)
    if num > 10
      @hygiene = 10
    elsif num < 0
      @hygiene = 0
    else
      @hygiene = num
    end
  end



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
    self.hygiene += 4  #calling hygiene method on the class itself
      "♪ Rub-a-dub just relaxing in the tub ♫"
    end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
      "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
       "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      self.happiness  -= 2
      friend.happiness -= 2
        "blah blah partisan blah lobbyist"
      elsif topic == "weather"
          self.happiness += 1
          friend.happiness += 1
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
# =======
# def happy?
#   if @happiness > 7
#     true
#   # elsif
#   #   @hygiene > 7
#   #   true
#   else
#     false
#  end
# end
#
# def clean?
#   if @hygiene > 7
#     true
#   # elsif
#   #   @hygiene > 7
#   #   true
#   else
#     false
#  end
# end
#
# def get_paid(salary)
#   @bank_account += salary
#      "all about the benjamins"
# end
#
# def take_bath
#   self.hygiene= @hygiene += 4
#
# #   if @hygiene + 4 > 10
# #   @hygiene = 10
# # else
# #   @hygiene += 4
# # end
#     "♪ Rub-a-dub just relaxing in the tub ♫"
#   end
#   def work_out
#     self.happiness= @happiness += 2
#     self.hygiene= @hygiene -= 3
#     "♪ another one bites the dust ♫"
#   end
#   def call_friend(person)
#     person.happiness += 3
#     self.happiness += 3
#     #binding.pry
#     "Hi #{person.name}! It's #{@name}. How are you?"
#   end
#   def start_conversation(person,topic)
#     if topic == "politics"
#     self.happiness=(@happiness) -2
#     person.happiness -=2
#     "blah blah partisan blah lobbyist"
#   elsif topic == "weather"
#     self.happiness=(@happiness) +1
#     person.happiness +=1
#     "blah blah sun blah rain"
#   else
#     "blah blah blah blah blah"
#   end
# end
# end
#
# #maru = Person.new("Elma") #setting var = to new person with name
#
# #hygiene_points can be changed when it's in reader
# >>>>>>> 2486e87ef5207334664ab6b3cfe6d036f65913b6
