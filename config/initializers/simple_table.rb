
#ActiveSupport::Dependencies.explicitly_unloadable_constants << 'TableFor'
#ActiveSupport::Dependencies.load_once_paths.delete(File.expand_path(File.dirname(__FILE__))+'/lib')
#require 'table_for'
#ActiveSupport::Dependencies::Loadable.unloadable(TableFor)

ActiveSupport::Autoload.autoload('TableFor', File.expand_path(File.dirname(__FILE__))+'/lib')

TableFor.setup do |config|
  
end
