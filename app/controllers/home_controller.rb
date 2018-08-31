class HomeController < ApplicationController

	def index
		
	end

	def homepage
		@todo = Todo.all
		@web = Webemployer.new
		@help = Help.new
		@fan = Fan.new
	end

	def create
#		@web = Webemployer.new(web_params)
#		@help = Help.new(help_params)
		@fan = Fan.new(fan_params)
#		@todo = Todo.create(todo_params)

#		@web.save
#		@help.save
		@fan.save
		binding.pry

		respond_to do |format|			
			format.html { redirect_to root_path }
			format.js { }
		end
	end

	def destroy

	end

	private

	def web_params
		params.require(:web).permit(:company, :state, :reason, :contact)
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