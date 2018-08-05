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
      t.string :facebook
      t.string :twitter
      t.string :google
      t.string :description
      t.string :edited_by

      t.timestamps
    end
    Contact.create_translation_table! :address => :string, :description => :text
  end
end
