RAILS_GEM_VERSION = '2.3.2' unless defined? RAILS_GEM_VERSION

require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.gem "authlogic"
  config.gem "paperclip"
  config.gem "will_paginate"
  
  config.time_zone = 'UTC'

  config.i18n.load_path += Dir[Rails.root.join(RAILS_ROOT, 'config', 'locales', '*.{rb,yml}')]
  config.i18n.default_locale = 'pt-BR'
end

SITE_NAME = 'Questions Generator'
SITE_HOST = 'teste.com'