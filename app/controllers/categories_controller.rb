# frozen_string_literal: true

class CategoriesController < ApplicationController
  def index
    render json: CategorySerializer.new(Category.all), status: :ok
  end

  def create
    category = Category.new(category_params)

    if category.save
      render json: CategorySerializer.new(category), status: :ok
    else
      render json: { message: 'Failed category creation!' }, status: :unprocessable_entity
    end
  end

  def update
    category = Category.find(params[:id])
    category.assign_attributes(category_params)

    if category.save
      render json: CategorySerializer.new(category), status: :ok
    else
      render json: { message: 'Failed category update!' }, status: :unprocessable_entity
    end
  end

  def destroy
    category = Category.find(params[:id])

    if category.destroy
      render json: { message: 'Successfully deleted!' }, status: :ok
    else
      render json: { message: 'Failed category update!' }, status: :unprocessable_entity
    end
  end

  private

  def category_params
    params.permit(:name, :description, :entry_type)
  end
end
