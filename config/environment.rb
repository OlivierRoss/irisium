# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

I18n.default_locale = :fr
I18n.available_locales = [:fr, :en]
