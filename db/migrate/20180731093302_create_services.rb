class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :title_1
      t.string :title_2
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
