class ChangeColumnCategoryInExpenses < ActiveRecord::Migration[6.0]
  def change
    rename_column :expenses, :category, :category_id
  end
end
