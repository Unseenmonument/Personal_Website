class HelpsController < ApplicationController

  def index
  end

  def new
  end

  def show
  end

  def edit
  end

  def create
    @help = Help.new(help_params)

    respond_to do |format|
      if @help.save
        format.html { redirect_to root_path, notice: "Your Input Was Saved!" }
         
      else
        format.html { redirect_to root_path, notice: "Your Input Was Not Saved!" }
      end
    end
  end
	  

  private

  def help_params
    params.require(:help).permit(:Name , :company, :project, :genre, :state, :contact, :coments)
  end
end