class Api::V1::ItemsController < ApplicationController
  def index
  	items = Item.all.order(created_at: :desc)
    render json: items
  end

  def create
  	item = Item.create!(item_params)
    if item
      render json: item
    else
      render json: item.errors
    end
  end

  def show
  end

  def destroy
  end

  private

  def item_params
    params.permit(:name, :image, :description)
  end
end
