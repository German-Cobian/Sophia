class ProfileController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :redirect_to_profile_form

  def show
    @user = User.find(params[:id])
  end

  def new; end

  def update
    if user_params[:username].present? && current_user.update(user_params)
      flash[:notice] = 'Profile successfully updated'
      redirect_to profile_path
    else
      flash[:alert] = if user_params[:username].blank?
                        'please set a username'
                      else
                        current_users.errors.full_messages.join(',')
                      end
      redirect_to new_profile_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :display_name, :date_of_birth, :city, :country, :bio, :join_date, :avatar)
  end
end
