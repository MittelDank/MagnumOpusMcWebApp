class StaticController < ApplicationController

  def index
    puts session[:user], "session User"
  end

  private

end
