Rails.application.config.assets.version = '1.0'

Rails.application.config.assets.paths += Dir["#{Rails.root}/vendor/user-assets/*"].sort_by { |dir| -dir.size }

%w( user/consultings admin/consultings ).each do |controller|
  Rails.application.config.assets.precompile += ["#{controller}.js.coffee", "#{controller}.css.scss"]
end

