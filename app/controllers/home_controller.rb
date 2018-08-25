class HomeController < ApplicationController

	def index
		
	end

	def homepage
		@web = Webemployer.new
		@help = Help.new
		@fan = Fan.new
	end

	def create
		@web = Webemployer.new(web_params)
		@help = Help.new(help_params)
		@fan = Fan.new(fan_params)

		respond_to do |format|
			if @web.save || @help.save || @fan.save
				format.html { redirect_to root_path, notice: "Your Input Was Saved!" }
				 
			else
				format.html { redirect_to root_path, notice: "Your Input Was Not Saved!" }
			end
		end
	end

	def destroy
	end

	private

	def web_params
		params.require(:web).permit(:company, :state, :reason, :contact)
	end

	def help_params
		params.require(:help).permit(:Name , :company, :project, :genre, :state, :contact, :coments)
	end

	def fan_params
		params.require(:fan).permit(:Name, :contact, :state, :book, :review, :stars)
	end

end