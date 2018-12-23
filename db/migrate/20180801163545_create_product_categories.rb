class CreateProductCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :product_categories do |t|
      t.string :category_name
      t.string :show

      t.timestamps
    end
    ProductCategory.create_translation_table! :show => :string
  end
end
