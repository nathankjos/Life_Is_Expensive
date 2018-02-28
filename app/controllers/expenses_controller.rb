class ExpensesController < ApplicationController
  # before_action :authorize_expense_view
  def index
    @a = 0
    @expenses = Expense.all
    @expArr = []
    @transpo = Expense.where(name: "Transportation")
    @food = Expense.where(name: "Food")
    @t_amount = 0
    @f_amount = 0
    if logged_in? 
    @budget = current_user.budget
    end
  end

  def show
    @expense = Expense.find params[:id].where(:user_id == current_user)
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
  end

  def update
  end

  def destroy
    @expense = Expense.find(params[:id])
    @expense.destroy
    redirect_to expenses_path
  end

  private
  def expense_params
    return params.require(:expense).permit(:name, :amount)
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
