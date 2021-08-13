# frozen_string_literal: true

class CategorySerializer < ApplicationSerializer
  attribute :id, &:id

  attribute :name, &:name

  attribute :entry_type, &:entry_type

  attribute :description, &:description
end
