class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.string :category
      t.string :project_name
      t.string :date
      t.string :location
      t.string :value
      t.string :client
      t.text :description
      t.text :solution
      t.string :url
      t.string :edited_by

      t.timestamps
    end
    Video.create_translation_table! :category => :string, :project_name => :string, :location => :string, :client => :string, :description => :text, :solution => :text
  end
end
