class SessionsController < ApplicationController

  def new
  end

  def create
    if session[:name].nil? && params[:name] != "" && !params[:name].nil?
      session[:name] = params[:name]
      redirect_to controller: 'application', action: 'hello'
    else
      redirect_to '/login'
    end
  end

  def destroy
    session[:name] = nil
    redirect_to controller: 'application', action: 'hello'
  end

end
