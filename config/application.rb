require 'derailed'

$LOAD_PATH << File.join(File.dirname(__FILE__), '..', 'app', 'controllers')

module OffTheRails
	class Application < Derailed::Application
	end
end
