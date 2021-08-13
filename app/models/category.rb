# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :expenses, dependent: :destroy

  validates :name, :description, presence: true
end
