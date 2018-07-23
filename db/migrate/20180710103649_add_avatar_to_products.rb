class AddAvatarToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :avatar, :string
    add_column :products, :material, :string
    add_column :products, :description, :text
  end
end
