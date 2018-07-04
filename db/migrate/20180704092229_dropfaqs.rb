class Dropfaqs < ActiveRecord::Migration[5.1]
  def change
  	drop_table :faqs
  end
end
