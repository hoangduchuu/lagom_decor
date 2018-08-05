class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :title_1
      t.string :title_2
      t.text :description
      t.string :image
      t.string :edited_by

      t.timestamps
    end
    Service.create_translation_table! :title_1 => :string, :title_2 => :string, :description => :text
  end
end
