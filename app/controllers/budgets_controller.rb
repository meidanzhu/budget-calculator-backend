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
        budget.category_id = 1
        # if params[:amount] < 0
        #     budget.category_id = 1
        # elsif params[:amount] > 0 
        #     budget.category_id = 2

        if budget.save
            render json: BudgetSerializer.new(budget)
        else
            render json: {error: 'could not be created'}
        end
        end
    end

    def update
        budget = Budget.find(params[:id])
        if budget.update(budget_params)
            render json: BudgetSerializer.new(budget)
        else
            render json: {error: 'could not be updated'}
        end
    end 

    def destroy
        budget = Budget.find(params[:id])
        budget.destroy
        render json: {message: "Successfully deleted #{budget.description}!"}
    end

    private

    def budget_params
        params.require(:budget).permit(:description, :amount)
    end
end
