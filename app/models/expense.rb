# frozen_string_literal: true

class Expense < ApplicationRecord
  belongs_to :category, optional: true

  validates :title, :transaction_date, :amount, presence: true

  scope :today, -> { where('transaction_date >= ? and transaction_date <= ?', Date.today.beginning_of_day, Date.today.end_of_day) }
  scope :last_thirty_days, -> { where('transaction_date >= ? and transaction_date <= ?', (Date.today - 29.days).beginning_of_day, Date.today.end_of_day ) }
  scope :this_month, -> { where('transaction_date >= ? and transaction_date <= ?', Date.today.beginning_of_month.beginning_of_day, Date.today.end_of_month.end_of_day ) }

  def self.entries_by_range(type)
    case type
    when 'today'
      today
    when 'this_month'
      this_month
    when 'last_30_days'
      last_thirty_days
    end
  end
end
