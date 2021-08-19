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
  end 
  
  def edit
  end 
  
  def update 
  end 
  
  def destroy
  end 
  
  private
  def take_params
    params.require(:take).permit(:name,:remaining,:lowest)
  end

end
