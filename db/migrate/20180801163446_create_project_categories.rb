class CreateProjectCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :project_categories do |t|
      t.string :category
      t.string :edited_by

      t.timestamps
    end
    ProjectCategory.create_translation_table! :category => :string
  end
end
