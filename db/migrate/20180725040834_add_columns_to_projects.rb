class AddColumnsToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :image_one, :string
    add_column :projects, :image_two, :string
    add_column :projects, :image_three, :string
  end
end
