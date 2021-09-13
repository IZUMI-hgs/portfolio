class UserSessionsController < ApplicationController
  skip_before_action :login_required, only: %i[new create]

  def new; end

  def create
    @user = login(params[:name], params[:password])

    if @user
      redirect_back_or_to(root_path, success: 'ログインしました')
    else
      flash.now[:danger] = 'ログインに失敗しました'
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to(root_path, success: 'ログアウトしました')
  end
end
