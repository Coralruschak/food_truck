class Event 
  attr_reader :name, :food_trucks
  
  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(truck)
    @food_trucks << truck
  end

  def food_truck_names ###This is returning all food trucks because 
    @food_trucks.each do |truck| #each returns the original array.
      @names = []
      @names << truck.name
    end
  end

  def food_trucks_that_sell(item) ###The key :item will not exist in your hash, 
    @food_trucks.find_all do |truck| #you should be looking for the key item
      truck.inventory[:item] == item #(the argument that you are sending in to the method.
    end
  end
end