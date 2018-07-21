class Product < ApplicationRecord

	TOP_RATED = [['YES', 'yes'], ['NO', 'no']]
	CATEGORIES = [['Sofa', 'sofa'], ['Chair/ Dining Chair', 'chair'], ['Console', 'console'], ['Decorations', 'decoration'], ['Fit in Furnitures', 'fif']]

	mount_uploader :avatar, ProductsUploader

end
