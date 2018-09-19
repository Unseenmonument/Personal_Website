class FansController < ApplicationController
  
  def index
    @fan = Fan.all
  end

  def edit
  end

  def new
  end

  def create

    @fan = Fan.new(fan_params)

    respond_to do |format|
      if @fan.save
        format.html { redirect_to root_path, notice: "Your Input Was Saved!" }
      
      else
        format.html { redirect_to root_path, notice: "Your Input Was Not Saved!" }
      end
    end
  end
  

  private

  def fan_params
    params.require(:fan).permit(:Name, :contact, :state, :book, :review, :stars)
  end
end