class AddCategoryEntryTypeInCategories < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :entry_type, :string
  end
end
