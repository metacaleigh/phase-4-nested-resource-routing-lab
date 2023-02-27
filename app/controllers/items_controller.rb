class ItemsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def index
    if params[:user_id]
      user = find_user
      items = user.items
    else
      items = Item.all
    end
    render json: items, include: user
  end

  def show
    item = Item.find(params[:id])
    render json: item
  end

  private
  def render_not_found_response
    render json: {error: "#{exception.model} not found"}, status: :not_found
  end

end
