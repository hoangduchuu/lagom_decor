class Interioridea < ApplicationRecord

	SHOW_ON_HOME = [['YES', 'yes'], ['NO', 'no']]
	CATEGORIES = [['Bed Room', 'bedroom'], ['Dining Room', 'diningroom'], ['Kitchen', 'kitchen'], ['Guest Rooms', 'guestroom']]

	mount_uploader :image, GalleryUploader
end
