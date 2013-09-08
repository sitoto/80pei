# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
  config.site_name = '帮你配 汽车服务网'
  config.allow_ssl_in_staging = false
  config.allow_ssl_in_production = false
  config.currency = 'CNY'
  config.logo = 'store/logo.png'
  config.admin_interface_logo = 'store/logo.png'

end

Spree.user_class = "Spree::User"
