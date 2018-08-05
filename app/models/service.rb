class Service < ApplicationRecord
	mount_uploader :image, InteriorideasCoverUploader

	translates :title_1, :title_2, :description
end
