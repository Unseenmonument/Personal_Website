class HomeController < ApplicationController

	def index
		
	end

	def homepage
		@web = Webemployer.new
		@help = Help.new
		@fan = Fan.new
		
	end
end