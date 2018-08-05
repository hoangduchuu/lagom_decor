class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :title
      t.text :comment
      t.string :edited_by

      t.timestamps
    end
    Comment.create_translation_table! :title => :string, :comment => :text
  end
end
