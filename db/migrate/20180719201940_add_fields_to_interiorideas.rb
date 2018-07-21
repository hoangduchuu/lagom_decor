class AddFieldsToInteriorideas < ActiveRecord::Migration[5.1]
  def change
  	add_column :interiorideas, :designer, :string
    add_column :interiorideas, :description, :text
    add_column :interiorideas, :image_one, :string
    add_column :interiorideas, :image_two, :string
    add_column :interiorideas, :image_three, :string
  end
end
