class CreateProjectCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :project_categories do |t|
      t.string :category_name
      t.string :show

      t.timestamps
    end
    ProjectCategory.create_translation_table! :category => :string
  end
end
