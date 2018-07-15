class Project < ApplicationRecord

	mount_uploader :cover_photo, CoverPhotoUploader

	CATEGORIES = [['Residential', 'residential'], ['Hospitality', 'hospitality'], ['Office', 'office'], ['Commercial', 'commercial']]
end
