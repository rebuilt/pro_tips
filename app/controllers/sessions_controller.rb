class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(email: params[:email].downcase)

    # if user.present? && user.authenticate(params[:password])
    if user.present? 
      session[:user_id] = user.id
      redirect_to account_tips_path
    else
      flash[:alert] = "Email or password were invalid.  Please try again"
      render "new"
    end
  end

  def destroy
    session.delete(:user_id)
    @current_user = nil
    @goal_user = nil
    redirect_to root_path
  end
end

