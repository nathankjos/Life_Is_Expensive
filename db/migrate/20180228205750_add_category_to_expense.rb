class AddCategoryToExpense < ActiveRecord::Migration[5.1]
  def change
    add_column :expenses, :category, :string
  end
end
