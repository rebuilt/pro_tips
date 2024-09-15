class AccountController < ApplicationController
  def edit
    @user = User.first
  end

  def update
    redirect_to account_path
  end
end
