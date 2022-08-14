class Api::V1::OrdersController < Api::V1::BaseController
  
  def show
    @order = Order.find(params[:id])
  end
  
  def create
    order_items_params = order_params[:order_items]
    @order = Order.new(order_params.except(:order_items))

    order_items_params.each do |order_item|
      @order.order_items.build(meal_id: order_item[:meal_id], quantity: order_item[:quantity])
    end
  
    if @order.save
      
      render :show, status: :created
    else
      render_error
    end
  end

  private

  def order_params
    params.require(:order).permit(:table, :user, order_items: [:meal_id, :quantity])
  end

  def render_error
    render json: { errors: @order.errors.full_messages },
      status: :unprocessable_entity
  end
end
