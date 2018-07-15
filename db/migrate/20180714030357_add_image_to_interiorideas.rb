class AddImageToInteriorideas < ActiveRecord::Migration[5.1]
  def change
    add_column :interiorideas, :image, :string
  end
end
