require "pry"

def find_item_by_name_in_collection(name, collection)
  target =nil
  
  collection.each do |value|
    if(value[:item] == name)
      target = value
    end 
  end 
  target
end

def consolidate_cart(cart)
  new_hash = {}
  counter =0
  new_arr =[]
  target = 1
  final_arr = [ {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "KALE", :price => 3.00, :clearance => false} ]
  
  cart.each do |value|
    new_arr.push(value[:item])
  end 

 while counter < new_arr.length do 
   if (new_arr[counter] == new_arr[counter +1])
     target +=1
   end 
   
   if(new_arr[counter] != new_arr[counter +1])
     new_hash.store(new_arr[counter], target)
      target = 1
   end 
  counter += 1
 end 
 
 counter = 0 
 new_hash.each do |key, value|
    puts !final_arr.any?{ |element| element[:item] == key}
    
    
  
  cart.each do |item|
    binding.pry
  end 
  # while counter < cart.length do 
  #   if (cart[counter][:item] == key && !final_arr.include?(:item => key))
  #     final_arr.push(cart[counter])
  #   end
  #   counter +=1
  # end 
  
 end
 puts final_arr

 
end 


consolidate_cart([
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "KALE", :price => 3.00, :clearance => false}
])



