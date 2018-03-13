class Product < ApplicationRecord
  def as_json
    {
      id: id,
      name: name,
      image_url: image_url,
      price: price,
      description: description,
      is_discounted: is_discounted?,
      tax: tax,
      total: total
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
end


