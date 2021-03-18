class SessionsController < ApplicationController

  def new
    @meta_tag= "noindex"
  end

  def create
    user = User.find_by(ign: params[:ign]) || false
    if user.pin
      session[:user] = user.id
      redirect_to root_path
    else
      User.new(ign: params[:ign], pin: params[:pin])
      session[:user] = user.id
      redirect_to root_path
    end
  end

  def destroy
    @meta_tag= "noindex"

    session[:user_id] = nil
    redirect_to root_path
  end

  def user_check
    user = User.find_by(ign: params[:ign]) || false
    if user && user.pin
      redirect_to :create
    else
      # logic to send console command here
      redirect_to new_session_path #, user: 'user'
    end
  end

end
