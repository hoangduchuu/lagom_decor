class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :category
      t.string :project_name
      t.string :date
      t.string :location
      t.string :value
      t.string :client
      t.text :description
      t.text :solution
      t.string :cover_photo
      t.string :image_one
      t.string :image_two
      t.string :image_three
      t.string :edited_by

      t.timestamps
    end
    Project.create_translation_table! :category => :string, :project_name => :string, :location => :string, :client => :string, :description => :text, :solution => :text
  end
end
