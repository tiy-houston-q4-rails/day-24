sword = Product.create name: "Sword"
axe = Product.create name: "axe"

["Valarian Steel", "Wolf Head", "Rubies"].each do |name|
  sword.widgets.create name: name
end

["Blade","Handle"].each do |name|
  axe.widgets.create name: name
end


50.times do
  names = 10.times.map { Faker::Lorem.word }
  Product.create_product_with_widgets Faker::Commerce.product_name, names
end
