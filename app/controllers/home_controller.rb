class HomeController < ApplicationController

	def index
	end

	def homepage
		@web = Web_employers.new
	end
end
