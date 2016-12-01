class Owner
  attr_accessor :name, :pets, :cat, :dog, :fish
  attr_reader :species

  @@all = []

  def initialize(name)
  	@name = name
  	@species = "human"
  	@pets = {fishes: [], cats: [], dogs: []}
  	@@all << self
  end

  def self.all
  	@@all
  end

def self.reset_all
	@@all.clear
end

def self.count
	@@all.count
end

def say_species
	"I am a #{@species}."
end

def buy_fish(name)
	feesh = Fish.new(name)
	@pets[:fishes] << feesh
end

def buy_cat(name)
	kitty = Cat.new(name)
	@pets[:cats] << kitty
end

def buy_dog(name)
	doge = Dog.new(name)
	@pets[:dogs] << doge
end

def walk_dogs
  @pets[:dogs].each do |dog|
    dog.mood = "happy"
  end
end

def play_with_cats
  @pets[:cats].each do |cat|
    cat.mood = "happy"
  end
end

def feed_fish
  @pets[:fishes].each do |fish|
    fish.mood = "happy"
  end
end

def sell_pets
  @pets.each do |species, instances|
    instances.each do |animal|
      animal.mood = "nervous"
    end
  end

  @pets[:fishes].clear
  @pets[:cats].clear
  @pets[:dogs].clear


end

def list_pets
  "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
end


end