class AuthenticationController < ApplicationController
  def destroy
    session[:user_id] = nil
    redired_to root_path
  end

  def create
    user = User.find(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash [:notice] = "Welcome" + :email
      redirect_to root_path
    else
      flash[:notice] = "Something went wrong"
      render :new
    end
  end

  def new
  end

end
