class HomeController < ApplicationController

	def index
		
	end

	def homepage
		@fans = Fan.all

		@fan = Fan.new
	end

	def create
		@fan = Fan.new(fan_params)
		
		@fan.save
		
		binding.pry

		respond_to do |format|			
			format.html { redirect_to homes_path }
		end
	end


	private

	def web_params
		params.require(:webemployer).permit(:company, :state, :reason, :contact)
	end

	def help_params
		params.require(:help).permit(:Name, :company, :project, :genre, :state, :contact, :coments)
	end

	def fan_params
		params.require(:fan).permit(:Name, :contact, :state, :book, :review, :stars)
	end

	def todo_params
      	params.require(:todo).permit(:description, :priority)
    end

end