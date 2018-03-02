class Expense < ApplicationRecord
  belongs_to :user

  def self.build_hash user_id
    user_expenses = self.where({user_id: user_id})
    expense_hash = {}
    user_expenses.each do |e|
      if !expense_hash[e.category]
        expense_hash[e.category] = []
      end
      expense_hash[e.category].push(e)
    end
    return expense_hash
  end
end