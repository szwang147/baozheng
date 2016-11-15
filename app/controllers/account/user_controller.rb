class Account::UserController < ApplicationController
  before_action :authenticate_user!
  layout 'account'

  def update
    if current_user.update(user_params)
      redirect_to account_user_path(current_user)
      flash[:notice] = "改好了 #{current_user.nickname}"
    else
      render :edit
    end
  end




  private

  def user_params
    params.require(:user).permit(:nickname, :description, :avatar)
  end

end
