class CreateConsultings < ActiveRecord::Migration[5.1]
  def change
    create_table :consultings do |t|
      t.string :title
      t.text :text
      t.string :edited_by

      t.timestamps
    end
    Consulting.create_translation_table! :title => :string, :text => :text
  end
end
