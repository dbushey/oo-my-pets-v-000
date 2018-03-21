require 'pry'

class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []
  @@count = 0

  def initialize(species = "human")
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@count = 0
    @@count
  end

  def say_species
     "I am a #{@species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets["dogs"] << fish
    binding.pry
  end




end
