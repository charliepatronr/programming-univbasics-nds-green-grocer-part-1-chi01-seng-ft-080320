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
  final_arr = []
  cart_comp = cart
  
  # Returns new_arr with every item in cart
  cart.each do |value|
    new_arr.push(value[:item])
  end 

  #returns a hash with items in cart and respective quantity present using new_arr
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
 
 # Returns arr of hashes  
 #iterates through created hash then iterates through cart_comparison to not mutate original cart 
 #and if the final arr does not already include the current item in cart_comp push it into final_arr with :count key and value from new_hash
 
 new_hash.each do |key, value|
    puts !final_arr.any?{ |element| element[:item] == key}
    cart_comp.each do |item|
      if(item[:item] == key && !final_arr.any?{ |element| element[:item] == key} )
        item[:count] = value
        final_arr.push(item)
      end 
    end 
 end
  final_arr
end 




