class Product < ActiveRecord::Base
  has_many :widgets

  scope :search, -> (query) { where("name LIKE ?", "%#{query}%" }
  scope :active, -> { where(active: true) }


  def self.create_product_with_widgets(product_name, widget_names)
    p = create(name: product_name)
    widget_names.each do |name|
      p.widgets.create name: name
    end
    p
  end

end
