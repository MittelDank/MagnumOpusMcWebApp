class SessionsController < ApplicationController

  def new
    @meta_tag= "noindex"
    puts 'session ign:'
    puts session[:ign]
  end

  def create
    # pin failure
    if params[:pin] != session[:pin]
      session[:user] = nil
      redirect_to root_path(login: "failed")
    else
      user = User.find_by(ign: session[:ign]) || false
      if user 
        user.pin = params[:pin]
        user.save
        session[:user] = user.id
        redirect_to root_path
      else
        user = User.create(ign: session[:ign], pin: params[:pin])
        session[:user] = user.id
        redirect_to root_path
      end
    end
  end

  def destroy
    @meta_tag= "noindex"

    session[:user] = nil
    redirect_to root_path
  end

  def user_check
    user = User.find_by(ign: params[:ign]) || false
    if user && user.pin
      redirect_to :create
    else
      # Pin for user in their mc server /mail read
      credentials = Rails.application.credentials.hosting
      pin = [1,1,1,1].map!{|x| (0..9).to_a.sample}.join
      command = "mail send #{params[:ign]} Login Pin: #{pin}"
      session[:ign] = params[:ign] 
      session[:pin] = pin

      fork { exec('node', './multicraft_api/api_module.js', credentials[:url], credentials[:user], credentials[:api_key], credentials[:server_id].to_s, command) }

      redirect_to new_session_path 
    end
  end

end
