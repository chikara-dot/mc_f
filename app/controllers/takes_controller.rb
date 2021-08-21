class TakesController < ApplicationController

  def new
    @take = Take.new
  end

  def create
    @take = Take.new(take_params)
    @take.save
    redirect_to root_path
  end

  def index
    @takes = Take.all
    @orders = Order.all
  end

  def edit
    @take = Take.find(params[:id])
  end

  def update
    @take = Take.find(params[:id])
    @take.update(take_params)
    redirect_to takes_path
  end

  def destroy
  end
  
  def notification
    @notifications = Take.all
  end

  private
  def take_params
    params.require(:take).permit(:name,:remaining,:lowest)
  end

end
