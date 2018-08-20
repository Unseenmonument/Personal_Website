class HomeController < ApplicationController

	def index
		
	end

	def homepage
		@web = Webemployer.new
		@help = Help.new
		@fan = Fan.new
	end

	def create
		@web = Webemployer.new
		@help = Help.new
		@fan = Fan.new

		if @web.save && @help.save && @fan.save


		end


	end

	def destroy
	end

end