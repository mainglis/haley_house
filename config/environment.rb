ENV['GEM_PATH'] = '/home/adamjcas/ruby/gems:/usr/lib/ruby/gems/1.8'
$:.push("/home/adamjcas/ruby/gems")

# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
HaleyHouse::Application.initialize!
