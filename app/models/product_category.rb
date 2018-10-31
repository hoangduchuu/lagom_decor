class ProductCategory < ApplicationRecord
	has_many :products, dependent: :destroy

	translates :category
end
