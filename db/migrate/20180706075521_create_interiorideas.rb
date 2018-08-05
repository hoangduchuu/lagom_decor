class CreateInteriorideas < ActiveRecord::Migration[5.1]
  def change
    create_table :interiorideas do |t|
      t.string :category
      t.string :title
      t.string :designer
      t.text   :description, :text
      t.string :show_on_home
      t.string :image
      t.string :image_one, :string
      t.string :image_two, :string
      t.string :image_three, :string
      t.string :edited_by

      t.timestamps
    end
    Interioridea.create_translation_table! :category => :string, :title => :string, :designer => :string, :description => :text
  end
end
