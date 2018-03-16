class ProductsController < ApplicationController
  def index
    search_term = params[:search]
    # situation 1 --- sort by id
    # situation 2 --- sort by price
    sort_by_price = params[:sort_price]
    if sort_by_price == 'true'
      products = Product.order(:price).where("name LIKE ?", "%#{search_term}%")
    else
      products = Product.order(:id).where("name LIKE ?", "%#{search_term}%")
    end
    render json: products.as_json
  end

  def create
    product = Product.new(
      name: params[:name],
      description: params[:description],
      price: params[:price],
      image_url: params[:image_url],
      in_stock: params[:in_stock]
    )
    if product.save
      render json: product.as_json
    else
      # do some other thing
      render json: {errors: product.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def show
    product = Product.find(params[:id])
    render json: product.as_json
  end

  def update
    product = Product.find(params[:id])

    product.name = params[:name] || product.name
    product.description = params[:description] || product.description
    product.in_stock = params[:in_stock] || product.in_stock
    product.price = params[:price] || product.price
    product.image_url = params[:image_url] || product.image_url
    if product.save
      render json: product.as_json
    else
      render json: {errors: product.errors.full_messages}
    end
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    render json: {message: "Successfully destroyed product ##{product.id}"}
  end
end
