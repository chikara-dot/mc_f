class OrdersController < ApplicationController

  def new
    @take = Take.find(params[:take_id])
    @order = Order.new(take_id: @take.id)
  end

  def create
    @order = Order.new(order_params)
    @order.take_id = params[:take_id]
    @order.save

    @take = Take.find(params[:take_id])
    @take.remaining = @take.remaining-@order.take_out
    @take.save
    redirect_to takes_path
  end

  def update
  end

  private
  def order_params
    params.require(:order).permit(:user_name,:take_out)
  end
end
