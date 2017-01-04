class SessionsController < ApplicationController

  def new
  end

  def create
    unless params[:name].nil? || params[:name] == ""
      session[:name] = params[:name]
      redirect_to controller: 'application', action: 'hello'
    else
      redirect_to '/login'
    end
  end

  def destroy
    session[:name] = nil
    redirect_to '/login'
  end

end
