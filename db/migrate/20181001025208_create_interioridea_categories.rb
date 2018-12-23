class CreateInteriorideaCategories < ActiveRecord::Migration[5.1]
	def change
		create_table :interioridea_categories do |t|
			t.string :category_name
			t.string :show

			t.timestamps
		end
		InteriorideaCategory.create_translation_table! :show => :string
	end
end
