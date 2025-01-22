class Event 
  attr_reader :name, :food_trucks
  
  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(truck)
    @food_trucks << truck
  end

  def food_truck_names
    names = []
    @food_trucks.each do |truck|
      names << truck.name
    end
    return names
  end

  def food_trucks_that_sell(item) ###The key :item will not exist in your hash, 
    @food_trucks.find_all do |truck| #you should be looking for the key item
      truck.inventory[:item] == item #(the argument that you are sending in to the method.
    end
  end
end