# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActiveSupport::Dependencies.autoload_paths << "#{Rails.root}/app/utilities"
