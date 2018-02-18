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
  end

  def say_species

  end
end
