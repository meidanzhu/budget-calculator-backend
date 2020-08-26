class ExpensesController < ApplicationController
    def index
        expenses = Expense.all 
        render json: ExpenseSerializer.new(expenses)
    end

    def show 
        expense = Expense.find(params[:id])
        render json: ExpenseSerializer.new(expense)
    end

    def create
        expense = Expense.new(expense_params)
        if expense.save
            render json: ExpenseSerializer.new(expense)
        else
            render json: {error: 'could not be created'}
        end
    end

    def destroy
        expense = Expense.find(params[:id])
        expense.destroy
        render json: {message: "#{expense.name} Deleted!"}
    end

    def update
        expense = expense.find(params[:id])
        expense.update(expense_params)
        render json: expenseSerializer.new(expense)
    end

    private

    def expense_params
        params.require(:expense).permit(:name, :description, :price, :date)
    end
end
