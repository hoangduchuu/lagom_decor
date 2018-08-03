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

      t.timestamps
    end
  end
end
