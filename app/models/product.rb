class Product < ApplicationRecord
  has_many :category_products
  has_many :categories, through: :category_products
  has_many :orders
  belongs_to :supplier
  has_many :images

  validates :name, presence: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :description, length: { in: 10..500 }

  def as_json
    {
      id: id,
      name: name,
      price: price,
      description: description,
      is_discounted: is_discounted?,
      tax: tax,
      total: total,
      in_stock: in_stock,
      supplier: supplier.as_json,
      images: images.as_json
    }
  end

  def is_discounted?
    price < 20
  end

  def tax
    (price * 0.09).round(2)
  end

  def total
    price + tax
  end

  # def categories
  #   # get the id of the product
  #   # id
  #   # look that up in the join table
  #   category_products = CategoryProduct.where(product_id: id)
  #   categories_of_this_product = []
  #   category_products.each do |category_product|
  #     # look up all the categories for the items in the join table
  #     categories_of_this_product << category_product.category
  #   end
  #   return categories_of_this_product
  # end
end






