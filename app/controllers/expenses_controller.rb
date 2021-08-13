# frozen_string_literal: true

class ExpensesController < ApplicationController
  def index
    expenses = Expense.entries_by_range(params[:range_type])
    render json: ExpenseSerializer.new(expenses), status: :ok
  end

  def create
    expense = Expense.new(expense_params)

    if expense.save
      render json: ExpenseSerializer.new(expense), status: :ok
    else
      render json: { message: 'Failed expense creation!' }, status: :unprocessable_entity
    end
  end

  def update
    expense = Expense.find(params[:id])
    expense.assign_attributes(expense_params)

    if expense.save
      render json: ExpenseSerializer.new(expense), status: :ok
    else
      render json: { message: 'Failed expense update!' }, status: :unprocessable_entity
    end
  end

  def destroy
    expense = Expense.find(params[:id])

    if expense.destroy
      render json: { message: 'Successfully deleted!' }, status: :ok
    else
      render json: { message: 'Failed expense update!' }, status: :unprocessable_entity
    end
  end

  private

  def expense_params
    params.permit(:title, :amount, :category_id, :transaction_date)
  end
end
