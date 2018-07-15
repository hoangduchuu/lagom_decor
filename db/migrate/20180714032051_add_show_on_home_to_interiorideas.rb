class AddShowOnHomeToInteriorideas < ActiveRecord::Migration[5.1]
  def change
    add_column :interiorideas, :show_on_home, :string
  end
end
