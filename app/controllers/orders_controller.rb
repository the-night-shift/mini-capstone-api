class OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    orders = current_user.orders
    render json: orders.as_json
  end

  def create
    carted_products = current_user.carted_products.where(status: "carted")
    # inputs
    carted_products
    # outputs
    # the subtotal --- all the items and their prices and their quantities all added up together
    order = Order.new(
      user_id: current_user.id,
      subtotal: ,
      tax: ,
      total: ,
    )
  end

end
