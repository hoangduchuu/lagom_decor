class CreateProductCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :product_categories do |t|
      t.string :category
      t.string :edited_by

      t.timestamps
    end
    ProductCategory.create_translation_table! :category => :string
  end
end
