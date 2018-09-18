class FansController < ApplicationController
  
  def index
  end

  def edit
  end

  def new
  end

  def create
#    @web = Webemployer.new(web_params)
#    @help = Help.new(help_params)
    @fan = Fan.new(fan_params)

    respond_to do |format|
      if @fan.save
        format.html { redirect_to root_path, notice: "Your Input Was Saved!" }
         
      else
        format.html { redirect_to root_path, notice: "Your Input Was Not Saved!" }
      end
    end
  end

  def destroy
  end

  private

#  def help_params
#    params.require(:help).permit(:Name , :company, :project, :genre, :state, :contact, :coments)
#  end

  def fan_params
    params.require(:fan).permit(:Name, :contact, :state, :book, :review, :stars)
  end
end