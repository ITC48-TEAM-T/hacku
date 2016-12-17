class UsersController < ApplicationController
  def create
    user = User.find_or_create_by(id: 1)
    user.name = create_params
    user.save
    redirect_to controller: :settings, action: :index
  end

  private

  def create_params
    params.require(:user).permit(:name)[:name]
  end
end
