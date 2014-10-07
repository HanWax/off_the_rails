require 'derailed'

$LOAD_PATH << File.join(File.dirname(__FILE__), '..', 'app', 'controllers')

require 'my_pages_controller'

module OffTheRails
	class Application < Derailed::Application
	end
end
