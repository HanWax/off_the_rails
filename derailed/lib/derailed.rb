require "derailed/version"

module Derailed
	class Application
		def call(env)
			[22, {'Content-Type' => 'text/html'}, ['Hello']]
		end
	end
end
