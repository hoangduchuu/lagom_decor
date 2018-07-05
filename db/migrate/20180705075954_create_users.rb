class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :head
      t.text :text

      t.timestamps
    end
  end
end
