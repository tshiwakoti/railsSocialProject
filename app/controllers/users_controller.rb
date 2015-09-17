class UsersController < ApplicationController

  def new
  end

  def login
  end

  def storyboard
    @stories = Status.all
  end


end
