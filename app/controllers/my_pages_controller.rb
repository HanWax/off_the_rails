class MyPagesController < Derailed::Controller
	attr_reader :name

	def about
		render :about, name: 'Hannah', last_name: 'Waxman'
	end

	def tell_me
		@name = 'Hannah'
	end
end
