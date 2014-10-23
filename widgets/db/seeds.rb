sword = Product.create name: "Sword"
axe = Product.create name: "axe"

["Valarian Steel", "Wolf Head", "Rubies"].each do |name|
  sword.widgets.create name: name
end

["Blade","Handle"].each do |name|
  axe.widgets.create name: name
end


50.times do
  product = Product.create name: Faker::Commerce.product_name
  10.times do
    product.widgets.create name: Faker::Lorem.word
  end
end
