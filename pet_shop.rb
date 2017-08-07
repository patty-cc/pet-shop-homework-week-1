def pet_shop_name(shop)
  name = shop[:name]
  return name
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, cash_deposit)
  return shop[:admin][:total_cash] += cash_deposit
end

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, sold_pets)
  return shop[:admin][:pets_sold] += sold_pets
end

def stock_count(shop)
  stock = shop[:pets].length()
  return stock
end

def pets_by_breed(shop, dog_breed)

  dog_breed_array = []

  for pet in shop[:pets] do
    if pet[:breed] == dog_breed
      dog_breed_array.push(pet)
    end
  end

  return dog_breed_array

end

def find_pet_by_name(shop, pet_name)

  for pet in shop[:pets] do
    if pet[:name] == pet_name
      return pet
    end
  end

  return nil

end

def remove_pet_by_name(shop, pet_name)
  for pet in shop[:pets] do
    if pet[:name] == pet_name
      return shop[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(shop, new_pet)
  return shop[:pets].push(new_pet)
end

def customer_pet_count(customer)
  return customer[:pets].length()
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

#optional exercises

def customer_can_afford_pet(customer, pet)
  return customer[:cash] >= pet[:price]
end


def sell_pet_to_customer(shop, pet, customer)


# start_length = shop[:pets].length()
#
#
#
# for pets in shop[:pets] do
#   if pets[:name] == pet
#     customer[:pets].push(pet)
#   end
# end
#
#   shop[:admin][:total_cash] += pet[:price]
#   shop[:pets].delete(pet)
#   if customer[:cash] >= pet[:price]
#       shop[:admin][:total_cash] += pet[:price]
#   end
#   puts shop[:pets].length()
#   puts customer[:pets].length
#
#
#   for pet in customer[:pets]do
#     return shop[:admin][:pets_sold] += customer[:pets].length
#   end
#
#   puts customer
#   puts shop[:admin]

end
