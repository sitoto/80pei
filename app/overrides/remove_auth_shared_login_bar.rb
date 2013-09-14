Deface::Override.new(:virtual_path => "spree/shared/_nav_bar",
                     :name => "remove_auth_shared_login_bar",
                     :remove => "li#link-to-login",
                     :origial => "<%= :partial => 'spree/shared/login_bar' %>",
                     :sequence => {:after => "auth_shared_login_bar"})
