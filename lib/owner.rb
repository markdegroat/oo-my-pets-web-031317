require 'pry'
require 'fish.rb'


class Owner
  # code goes here
  @@all_owners = []

  def track_owner(owner)
  	@@all_owners << owner
  end
  
  def initialize(species)
  	@species = species
  	@name = "blank"
  	@pets = {
  		:fishes => [],
  		:dogs => [],
  		:cats => []
  	}

  	track_owner(self)
  end



  def species
  	@species
  end

  def name
  	@name
  end

  def name=(name)
    @name = name
  end

  def pets
  	@pets
  end

  
  def all_owners
	  @all_owners
  end

  def self.all
  	@@all_owners
  end

  def self.reset_all
    @@all_owners = []
  end
  def self.count
    @@all_owners.count
  end

  attr_writer :pets

  def say_species
  	"I am a #{@species}."
  end

  def buy_fish(fish_name)
    @pets[:fishes] << Fish.new(fish_name)
  end
  def buy_cat(cat_name)
    @pets[:cats] << Cat.new(cat_name)
  end
  def buy_dog(dog_name)
    @pets[:dogs] << Dog.new(dog_name)
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
    pets.values.each do |array_of_animals|
      
      array_of_animals.each do |pet|
        pet.mood = "nervous"
      end
    end
    @pets = {
      :fishes => [],
      :dogs => [],
      :cats => []
    }
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
  



end


