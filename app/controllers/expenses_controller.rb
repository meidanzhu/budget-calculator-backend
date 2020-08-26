class ExpensesController < ApplicationController
    def index
        expenses = Expense.all 
        render json: ExpenseSerializer.new(expenses)
    end

    def show 
        expense = Expense.find(params[:id])
        render json: ItemSerializer.new(item)
    end
end
