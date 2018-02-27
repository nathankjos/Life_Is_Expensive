class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :expenses do |t|
      t.string :name
      t.float :amount
      t.boolean :daily
      t.boolean :weekly
      t.boolean :monthly
      t.boolean :bi_yearly
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
