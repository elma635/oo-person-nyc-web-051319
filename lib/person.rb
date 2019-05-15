class Person
  attr_reader :NAME,:happiness_points,:hygiene_points
  attr_accessor :account

def initialize(name) #bc we're changing name, we're taking name arg.
  @NAME = name
  @account = "$25"
  @happiness_points = 8
  @hygiene_points = 8

end

def hygiene_points
  if @hygiene_points <0
    puts "Invalid number"
  elsif @hygiene_points >10
    puts "Invalid number"
    @hygiene_points
  end
end

end

maru = Person.new("Elma") #setting var = to new person with name

#hygiene_points can be changed when it's in reader
