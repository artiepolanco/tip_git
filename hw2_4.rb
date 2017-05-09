class Person
  attr_accessor :name, :hair_color, :everyone

  @@everyone = []

  def initialize(name, hair_color)
    @name = name
    @hair_color = hair_color
  end

  def self.riot
    puts "The people are rising up!"
    @@everyone.each do |each_one|
      puts "#{each_one.instance_variable_get(:@name)} is rioting!"
    end
  end

  def save
    @@everyone << self
  end

end

sandy = Person.new "Sandy", "blonde"
sandy.save
joe = Person.new "Joe", "red"
joe.save
tim = Person.new "Tim", "black"
tim.save

Person.riot
