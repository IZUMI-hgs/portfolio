class UsersController < ApplicationController
  skip_before_action :login_required, only: %i[top new create]
  # GET /users or /users.json
  def top;end

  # GET /users/new
  def new
    @user = User.new
  end


  # POST /users or /users.json
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to login_path, success: "ユーザー登録が完了しました"
    else
      flash.now[:danger] = "ユーザー登録に失敗しました"
      render :new
    end
  end



  private
   

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name, :password, :password_confirmation)
    end
    
end
