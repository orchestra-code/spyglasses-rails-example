Spyglasses.configure do |config|
  config.api_key = ENV['SPYGLASSES_API_KEY']
  config.debug = true
  config.platform_type = 'rails'
  config.exclude_paths = [
    '/rails/active_storage',  # Exclude Active Storage routes
    '/admin',                 # Exclude admin routes
    %r{^/api/internal}        # Exclude internal API routes (regex)
  ]
end
 
# Add middleware with configuration
Rails.application.config.middleware.use Spyglasses::Middleware