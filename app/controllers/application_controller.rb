class ApplicationController < ActionController::Base
  helper_method :current_user, :require_admin

  private

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def require_admin
    if current_user.nil?
      return redirect_to root_path
    end

    if !current_user.admin
      return redirect_to root_path
    end
  end

end
