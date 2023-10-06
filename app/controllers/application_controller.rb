class ApplicationController < ActionController::Base
  before_action :redirect_to_profile_form, if: -> { user_signed_in? && current_user.username.blank? }

  protected

  def after_sign_in_path_for(_resource)
    dashboard_path
  end

  def redirect_to_profile_form
    redirect_to new_profile_path
  end

  def host_user
    redirect_to root_url if !current_user == @user
  end
end
