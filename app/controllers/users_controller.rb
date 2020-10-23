class UsersController < ApplicationController
  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path #ルーティングを経由する
    else
      render :edit #直接ビューを返す
    end
  end

  private
  def user_params
    params.require(:user).permit(:name,:email)
  end

end
