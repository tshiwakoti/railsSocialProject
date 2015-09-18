class SessionController < ApplicationController


  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      @user = User.find_by(email: params[:email])
      redirect_to "/storyboard"
    else
      # fail
      #show flash error messages
      flash[:errors] = "Invalid Email/Password. Please Try Again"
      redirect_to "/login"
    end
  end

  def destroy
    session.destroy
    redirect_to '/session/new'
  end

end
