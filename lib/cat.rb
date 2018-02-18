class Cat
  attr_accessor :name, :mood

  def initialize(name)
    @name = name.dup.freeze
  end
end
