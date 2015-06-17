require_relative 'app'

def assert(truthy)
  raise "Tests failed" unless truthy
end

# p chef = Chef.find(1)
#chef.new_record?
# Este es un ejemplo de test ya que los nombres de los chefs son aleatorios, este test muy probablemente fallará
#assert chef[:first_name] == 'Chaya'
# assert chef[:last_name] == 'Adria'

#meal = Meal.new({id: 1, name: 'Chicken', created_at: '2012-12-01 05:54:30'})
chef = Chef.new({first_name: "Santi", last_name: "Bermudez", email: "s@gmail.com", phone: "5545454", birthday: "1992-08-12"})

#p Meal.create(name: 'Chicken', chef_id: 2)

 chef.update!

#p Chef.where("first_name = ?", "Merritt")

# p chef[:first_name]
# chef[:first_name] = 'Steve'
# p chef[:first_name]
# puts
# p meal[:name]
# meal[:name] = "Pollo"
# p meal[:name]
# puts
puts "finished"