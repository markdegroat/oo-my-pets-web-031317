class Dog
  # code goes here
  attr_accessor :mood
  def initialize(name)
  	@name = name
  	@mood = "nervous"
  end

  def name
  	@name
  end

  def mood
  	@mood
  end

  def mood=(mood)
  	@mood = mood
  end
  
end