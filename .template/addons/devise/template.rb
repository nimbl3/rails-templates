apply '.template/addons/devise/Gemfile.rb'
apply '.template/addons/devise/spec_support.rb'

after_bundle do
  generate 'devise:install' if @add_devise
end
