class OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    orders = current_user.orders
    render json: orders.as_json
  end

  def create
    # inputs
    carted_products = current_user.carted_products.where(status: "carted")

    # look at first carted product
    # carted_products[0]
    # find the product

    # figure out the price, $9
    # multiply by quantity, 3
    # first item subtotal $27
    # carted_products[0].quantity * carted_products[0].product.price

    # look at the second carted product
    # find the product
    # figure out the price, $270
    # multiply by quantity, 4
    # first item subtotal $1080
    # carted_products[1].quantity * carted_products[1].product.price

    # add them together
    # 27 + 1080 = 1107
    # carted_products[0].quantity * carted_products[0].product.price + carted_products[1].quantity * carted_products[1].product.price

    calculated_subtotal = 0
    carted_products.each do |carted_product|
      calculated_subtotal += carted_product.quantity * carted_product.product.price
    end

    p calculated_subtotal
    render json: {subtotal: calculated_subtotal}
    # outputs
    # the subtotal --- all the items and their prices and their quantities all added up together
    # order = Order.new(
    #   user_id: current_user.id,
    #   subtotal: ,
    #   tax: ,
    #   total: ,
    # )
  end

end
