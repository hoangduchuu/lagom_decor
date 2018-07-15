Rails.application.config.assets.version = '1.0'

Rails.application.config.assets.paths += Dir["#{Rails.root}/vendor/user-assets/*"].sort_by { |dir| -dir.size }
Rails.application.config.assets.paths += Dir["#{Rails.root}/vendor/admin-assets/*"].sort_by { |dir| -dir.size }

%w( user/homes user/comments user/contacts user/consultings user/products user/interiorideas user/projects   admin/homes admin/comments admin/contacts admin/customers admin/consultings admin/products admin/interiorideas admin/projects ).each do |controller|
  Rails.application.config.assets.precompile += ["#{controller}.js.coffee", "#{controller}.css.scss"]
end

