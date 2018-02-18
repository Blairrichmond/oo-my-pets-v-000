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
    @pets = {:dogs => [], :cats => [], :fishes => []}
    @@all << self
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    self.pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def list_pets

  end
end
