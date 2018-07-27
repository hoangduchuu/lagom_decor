class Customer < ApplicationRecord

	has_many :messages, dependent: :destroy
end
