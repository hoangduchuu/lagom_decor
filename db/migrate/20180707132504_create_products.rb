class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :product_number
      t.string :category
      t.string :name
      t.string :price
      t.string :top_rated

      t.timestamps
    end
  end
end
