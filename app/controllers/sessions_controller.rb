class SessionsController < ApplicationController

  def new
    @meta_tag= "noindex"
  end

  def create
    if check_pin()
      @user = User.find_by_username(params[:session][:username])
      if @user && @user.authenticate(params[:session][:password])
        session[:user_id] = @user.id
        redirect_to '/'
      else
        # User.new(username: #user info here

      end
    else 
      redirect_to new_session_path
      flash[:alert] = "Oops.. Houston, we have a problem..."
    end
  end

  def destroy
    @meta_tag= "noindex"

    session[:user_id] = nil
    redirect_to root_path
  end

  def check_pin

  end

end
