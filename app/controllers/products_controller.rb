class ProductsController < ApplicationController
  # before_action :authenticate_admin, except: [:index, :show]

  def index
    # # prove that the app knows I'm logged in
    # p "*" * 50
    # p current_user
    # p "*" * 50
    # search_term = params[:search]
    # # situation 1 --- sort by id
    # # situation 2 --- sort by price
    # sort_by_price = params[:sort_price]
    # if sort_by_price == 'true'
    #   products = Product.order(:price).where("name LIKE ?", "%#{search_term}%")
    # else
    #   products = Product.order(:id).where("name LIKE ?", "%#{search_term}%")
    # end
    products = Product.all
    render json: products.as_json
  end

  def create
    # ONLY ADMINS
    # p '*' * 50
    # p current_user
    product = Product.new(
      name: params[:name],
      description: params[:description],
      price: params[:price],
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
    product = Product.find_by(id: params[:id])
    render json: product.as_json
  end

  def update
    product = Product.find(params[:id])

    product.name = params[:name] || product.name
    product.description = params[:description] || product.description
    product.in_stock = params[:in_stock] || product.in_stock
    product.price = params[:price] || product.price
    if product.save!
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
