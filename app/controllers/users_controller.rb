class UsersController < ApplicationController
  def create
    user = User.find_or_create_by(id: 1)
    user.name = name_params if params[:user][:name].present?
    user.player_name = player_name_params if params[:user][:player_name].present?
    user.save
    redirect_to controller: :settings, action: :index
  end

  private

  def name_params
    params.require(:user).permit(:name)[:name]
  end

  def player_name_params
    params.require(:user).permit(:player_name)[:player_name]
  end
end
