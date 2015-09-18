class UsersController < ApplicationController

  def new
  end

  def create
    @user = User.new(user_params)
  	if @user.save
  		redirect_to '/login'
  	else
  		flash[:errors] = @user.errors.full_messages
  		redirect_to '/signup'
  	end
  end

  def login
    
  end

  def storyboard
    @stories = Status.all
  end

  private
  def user_params
  	params.require(:user).permit(:first_name, :last_name, :username, :email, :password)
  end

end
