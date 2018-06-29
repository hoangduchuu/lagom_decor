class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :email
      t.string :phone
      t.string :fax
      t.string :address
      t.string :fb
      t.string :twitter
      t.string :open_from
      t.string :open_to
      t.string :open_hour
      t.string :close_hour

      t.timestamps
    end
  end
end
