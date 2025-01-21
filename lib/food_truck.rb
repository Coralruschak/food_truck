class FoodTruck
  attr_reader :name, :inventory, :stock

  def initialize(name)
    @name = name
    @inventory = {} ##
  end
##This logic will not work in the situations where the inventory hash is not empty, 
#but does not contain the requested item.

#The method is also not working because you are looking for the wrong key. 
#You should be looking for the key item
  def check_stock(item)
    if @inventory == {} ##
      return 0
    else
      return @inventory[:item]
    end
  end

  def stock(item, amount)   ##This would only work if an item already exists in the
    @inventory[:item] += amount #@inventory hash. But, since this method is the way 
  end  #that we get things into that hash.... that will never work. 
      #You are trying to do math on nil

  def potential_revenue
    
  end
end