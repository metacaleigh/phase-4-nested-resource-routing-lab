class UsersController < ApplicationController

  # rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  def show
    user = User.find_by(id: params[:id])
    render json: user, include: :items
  # rescue ActiveRecord::RecordNotFound
  #   render json: {errors: "User not found"}, status: :not_found
  end

  private

  # def record_not_found
  #   render json: {error: "User not found"}, status: :not_found
  # end
end
