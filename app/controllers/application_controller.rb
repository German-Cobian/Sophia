class ApplicationController < ActionController::Base
  before_action :redirect_to_username_form, if: -> { user_signed_in? && current_user.username.blank? }
  before_action :set_query

  def set_query
    @query = Article.ransack(params[:q])
  end
  
  protected

  def after_sign_in_path_for(_resource)
    dashboard_path
  end

  def redirect_to_username_form
    redirect_to new_username_path
  end
end
