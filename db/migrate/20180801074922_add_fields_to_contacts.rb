class AddFieldsToContacts < ActiveRecord::Migration[5.1]
  def change
  	add_column :contacts, :facebook, :string
    add_column :contacts, :twitter, :string
    add_column :contacts, :google, :string
    add_column :contacts, :description, :text
  end
end
