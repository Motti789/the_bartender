class Drinks

  @@all = []

  attr_accessor :drink, :ingredients, :name,

   def initialize(name)
    @name = name
    @@all << self
  end

    def self.all
     @@all
    end
  
  

end



