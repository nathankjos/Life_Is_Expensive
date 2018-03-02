class ExpensesController < ApplicationController
  # before_action :authorize_expense_view
  def index
    @expTotal = 0
    @expenses = Expense.where(user_id: current_user.id)
    @expArr = []

    @expense_hash = Expense.build_hash(current_user.id)
    # @transpo = Expense.where(name: "Transportation", user_id: current_user.id)
    # @food = Expense.where(name: "Food", user_id: current_user.id)
    if logged_in? 
    @budget = current_user.budget
    end
  end

  def show
    @expense = Expense.find params[:id]
    @user = User.find(@expense.user_id)
  end

  def new
    @expense = current_user.expenses.new
  end

  def create
    @expense = current_user.expenses.new expense_params
    @expense.save
    redirect_to expenses_path
  end

  def edit
    @expense = Expense.find(params[:id])
  end

  def update
    @expense = Expense.find(params[:id])
    if @expense.update_attributes(expense_params)
      redirect_to expenses_path(current_user.id)
    else
      redirect_to edit_expense_path @user.id
    end
  end

  def destroy
    @expense = Expense.find(params[:id])
    @expense.destroy
    redirect_to expenses_path
  end

  private
  def expense_params
    return params.require(:expense).permit(:name, :amount, :category)
  end

  # def authorize_expense_view
  #   if logged_in?
  #   @expense = Expense.find params[@expense.id]
  #   if @expense.user.id != current_user.id
  #     redirect_to root_path
  #   end
  # elsif
  #   redirect_to root_path
  # end
  # end
end
