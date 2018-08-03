class Service < ApplicationRecord
	mount_uploader :image, InteriorideasCoverUploader
end
