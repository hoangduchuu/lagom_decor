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

      t.timestamps
    end
  end
end
