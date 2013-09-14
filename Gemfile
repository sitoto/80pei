#source 'https://rubygems.org'
source 'http://ruby.taobao.org'

gem 'rails', '3.2.14'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mysql2'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
group :production do
  gem 'unicorn'
end

group :development, :test do
  gem 'capistrano', '2.9.0', require: false
  gem 'rvm-capistrano', require: false
end

# To use debugger
# gem 'debugger'
# gem 'spree_auth_devise', github: 'spree/spree_auth_devise', branch: '2-0-stable'
#
# for the activemerchant_patch_for_china
gem 'ruby-hmac'
gem 'rails-i18n'

gem 'spree', '2.0.4'
gem 'spree_auth_devise', github: 'spree/spree_auth_devise', branch: '2-0-stable'
gem 'spree_static_content', :github => 'spree/spree_static_content', :branch => '2-0-stable'
gem 'spree_editor', :github => "spree/spree_editor"
gem 'tinymce-rails-langs'

gem 'activemerchant'
#gem 'active_merchant', github: 'Shopify/active_merchant'
gem 'activemerchant_patch_for_china'
gem 'spree_alipay', github: 'sitoto/spree_alipay', branch: '2-0-stable' 
#gem "spree_alipay", :path => "/home/hw/sites/spree_alipay", branch: '2-0-stable'

