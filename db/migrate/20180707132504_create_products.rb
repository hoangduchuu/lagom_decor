class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :product_number
      t.string :category
      t.string :product_name
      t.string :price
      t.string :top_rated
      t.string :avatar
      t.string :material
      t.text :description
      t.string :edited_by

      t.timestamps
    end
    Product.create_translation_table! :category => :string, :product_name => :string, :material => :string, :description => :text
  end
end
