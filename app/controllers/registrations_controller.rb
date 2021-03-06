class RegistrationsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:email, :password))
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Signup Successful"
      redirect_to "/"
    else
      render :new
    end
  end

end
