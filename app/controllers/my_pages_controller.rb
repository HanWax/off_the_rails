class MyPagesController < Derailed::Controller
	def about
		render :about, name: 'Hannah', last_name: 'Waxman'
	end
end
