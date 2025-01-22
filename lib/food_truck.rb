class FoodTruck
  attr_reader :name, :inventory, :stock

  def initialize(name)
    @name = name
    @inventory = {} 
  end

  def check_stock(item)
    if @inventory == {} 
      return @inventory[item] = 0
    else
      return @inventory[item]
    end
  end

  def stock(item, amount) 
    if !@inventory.include?(item)
      @inventory[item] = amount
    else
      @inventory[item] += amount
    end
  end  
  
  def potential_revenue
    total = 0
    @inventory.each do |key, value|
      total += key.price * value
    end
    return total
  end
end