require "derailed/version"
require 'derailed/controller.rb'
require 'derailed/utils.rb'
require 'derailed/dependencies.rb'

module Derailed
	class Application
		def call(env)

			if env['PATH_INFO'] == '/'
				return [302, {'Location' => '/pages/about'}, []]
			end

			if env['PATH_INFO'] == '/favicon.ico'
				return [500, {}, []]
			end
			#env['PATH_INFO'] = '/pages/about' => PagesController.send(:about)
			controller_class, action = get_controller_and_action(env)
			controller = controller_class.new(env)
			response = controller_class.new(env).send(action)

			if controller.get_response
				controller.get_response
			else
				controller.render(action)
				controller.get_response
			end
		end


		def get_controller_and_action(env)
			_, controller_name, action = env['PATH_INFO'].split('/')
			controller_name = controller_name.to_camel_case + 'Controller'
			[Object.const_get(controller_name), action]
		end
	end
end
