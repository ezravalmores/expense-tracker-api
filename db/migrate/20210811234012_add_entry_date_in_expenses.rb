class AddEntryDateInExpenses < ActiveRecord::Migration[6.0]
  def change
    add_column :expenses, :transaction_date, :datetime
  end
end
