class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :customer_name
      t.string :phone
      t.string :email
      t.text :message
      t.string :status, null: false, default: 'false'
      t.string :edited_by

      t.timestamps
    end
  end
end
