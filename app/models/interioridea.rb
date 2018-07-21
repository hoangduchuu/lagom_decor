class Interioridea < ApplicationRecord

	SHOW_ON_HOME = [['NO', 'no'], ['YES', 'yes']]

	mount_uploader :image, InteriorideasCoverUploader
	mount_uploader :image_one, InteriorideasCoverUploader
	mount_uploader :image_two, InteriorideasCoverUploader
	mount_uploader :image_three, InteriorideasCoverUploader

end
