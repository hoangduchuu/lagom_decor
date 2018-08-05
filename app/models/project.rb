class Project < ApplicationRecord

	mount_uploader :cover_photo, ProjectsCoverUploader
	mount_uploader :image_one, ProjectsCoverUploader
	mount_uploader :image_two, ProjectsCoverUploader
	mount_uploader :image_three, ProjectsCoverUploader

	CATEGORIES = [['Residential', 'residential'], ['Hospitality', 'hospitality'], ['Office', 'office'], ['Commercial', 'commercial']]

	translates :category, :project_name, :location, :client, :description, :solution
end
