class WebemployersController < ApplicationController

	def index
	end

	def new
	end

	def show
	end

	def edit
	end


	def create
	    @web = Webemployer.new(web_params)

	    respond_to do |format|
	      if @web.save
	        format.html { redirect_to root_path, notice: "Your Input Was Saved!" }
	         
	      else
	        format.html { redirect_to root_path, notice: "Your Input Was Not Saved!" }
	      end
	    end
	end

  	private

	def web_params
	    params.require(:webempolyer).permit(:company, :state, :reason, :contact)
	end
end
