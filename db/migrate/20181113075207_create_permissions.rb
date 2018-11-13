class CreatePermissions < ActiveRecord::Migration[5.1]
  def change
    create_table :permissions do |t|
      t.integer :admin_id
      t.string :status

      t.timestamps
    end
  end
end
