class Product < ApplicationRecord
	belongs_to :product_category, optional: true

	TOP_RATED = [['YES', 'yes'], ['NO', 'no']]
	CATEGORIES = [['Sofa', 'sofa'], ['Chair/ Dining Chair', 'chair'], ['Console', 'console'], ['Decorations', 'decoration'], ['Fit in Furnitures', 'fif']]

	mount_uploader :avatar, ProductsUploader

	translates :category, :product_name, :material, :description

end
