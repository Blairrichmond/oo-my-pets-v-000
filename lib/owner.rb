class Owner
  attr_accessor :name, :pets, :dogs, :cats, :fishes
  attr_reader :species
  attr_writer :all

  @@all = []

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end



  def initialize(name)
    @name = name
    @species = "human"
    @pets = {:dogs => [], :cats => [], :fish => []}
    @@all << self
  end

  def say_species
    puts "I am a human."
  end
end
