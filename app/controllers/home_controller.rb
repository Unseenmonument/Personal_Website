class HomeController < ApplicationController

	def index
		
	end

	def homepage
		@web = Webemployer.new
		@fan = Fan.new
		
	end
end