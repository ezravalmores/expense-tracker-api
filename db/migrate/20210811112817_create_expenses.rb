class CreateExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :expenses do |t|
      t.integer :category
      t.string :title
      t.float :amount

      t.timestamps
    end
  end
end
