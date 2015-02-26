class RegistrationsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:email, :password))
    if @user.save
      flash[:notice] = "Signup Successful"
      redirect_to talks_path
    else
      render
    end
  end

end