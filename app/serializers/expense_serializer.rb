# frozen_string_literal: true

class ExpenseSerializer < ApplicationSerializer
  attribute :id, &:id

  attribute :category_id, &:category_id

  attribute :category_name do |expense|
    expense.category&.name
  end

  attribute :title, &:title

  attribute :created_at do |expense|
    expense.created_at.strftime("%a, %d-%m-%Y")
  end

  attribute :transaction_date do |expense|
    expense.transaction_date&.strftime("%Y-%m-%d")
  end

  attribute :amount, &:amount
end
