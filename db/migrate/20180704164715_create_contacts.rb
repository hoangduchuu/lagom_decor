class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :phone
      t.string :fax
      t.string :email
      t.string :address
      t.string :opendate
      t.string :closedate
      t.string :openat
      t.string :closeat

      t.timestamps
    end
  end
end
