class UserSessionsController < ApplicationController
  def create
    binding.pry
    @user = login(params[:name], params[:password])

    if @user
      redirect_back_or_to(root_path, notice: 'Login successful')
    else
      flash.now[:alert] = 'Login failed'
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to(root_path, notice: 'Logged out!')
  end
end
