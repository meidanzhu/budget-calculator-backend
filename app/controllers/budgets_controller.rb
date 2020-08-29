class BudgetsController < ApplicationController
    def index
        budgets = Budget.all 
        render json: BudgetSerializer.new(budgets)
    end

    def show 
        budget = Budget.find(params[:id])
        render json: BudgetSerializer.new(budget)
    end

    def create
        budget = Budget.new(budget_params)
        if budget.save
            render json: BudgetSerializer.new(budget)
        else
            render json: {error: 'could not be created'}
        end
    end

    def update
        budget = Budget.find(params[:id])
        budget.update(budget_params)
        render json: BudgetSerializer.new(budget)
    end

    def destroy
        budget = Budget.find(params[:id])
        budget.destroy
        render json: budget
    end

    private

    def budget_params
        params.require(:budget).permit(:name, :description, :price)
    end
end
