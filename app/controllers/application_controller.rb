class ApplicationController < ActionController::Base
    helper_method :current_user
    add_flash_types :success, :info, :warning, :danger
    before_action :login_required



    private

    def current_user
        @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end

    def login_required
        redirect_to login_url unless current_user
    end
end
