source 'http://rubygems.org'

#gem 'rails', '3.0.20'
# see comments on http://weblog.rubyonrails.org/2013/2/11/SEC-ANN-Rails-3-2-12-3-1-11-and-2-3-17-have-been-released/
gem "rails", :git => "git://git.assembla.com/assembla-rails.git", :branch => :master

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# gem 'sqlite3'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger (ruby-debug for Ruby 1.8.7+, ruby-debug19 for Ruby 1.9.2+)
# gem 'ruby-debug'      
group :development do
  gem 'ruby-debug19', :require => 'ruby-debug'
end

# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri'
# gem 'sqlite3-ruby', :require => 'sqlite3'
# gem 'aws-s3', :require => 'aws/s3'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
# group :development, :test do
#   gem 'webrat'
# end

# REFINERY CMS ================================================================
# Anything you put in here will be overridden when the app gets updated.

gem 'refinerycms',              '~> 1.0.4'
             
gem 'mysql2', '~>0.2.x', '<0.3'
  
group :development, :test do    
  gem 'sqlite3' 
  # To use refinerycms-testing, uncomment it (if it's commented out) and run 'bundle install'
  # Then, run 'rails generate refinerycms_testing' which will copy its support files.
  # Finally, run 'rake' to run the tests.
  # gem 'refinerycms-testing',    '~> 1.0.4'
end

# END REFINERY CMS ============================================================

# USER DEFINED


# Specify additional Refinery CMS Engines here (all optional):
# gem 'refinerycms-inquiries',    '~> 1.0'
# gem "refinerycms-news",         '~> 1.2'
# gem 'refinerycms-blog',         '~> 1.6'
# gem 'refinerycms-page-images',  '~> 1.0'

# Add i18n support (optional, you can remove this if you really want to).
gem 'refinerycms-i18n',         '~> 1.0.0'   

# engines for F5lab:
gem 'refinerycms-blog',         '~> 1.6.1'
gem 'refinerycms-inquiries',    '~> 1.0.0'
gem 'refinerycms-search',       '~> 0.9.8'
gem 'refinerycms-page-images',  '~> 1.0'

# END USER DEFINED

gem 'refinerycms-portfolio_items', '1.0', :path => 'vendor/engines'     