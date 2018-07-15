class CreateInteriorideas < ActiveRecord::Migration[5.1]
  def change
    create_table :interiorideas do |t|
      t.string :category
      t.string :title

      t.timestamps
    end
  end
end
