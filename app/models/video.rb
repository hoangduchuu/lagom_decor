class Video < ApplicationRecord
	translates :category, :project_name, :location, :client, :description, :solution
end
