class SessionsController < ApplicationController

  def new
    @user = session[:name]
  end

  def create
    if session[:name].nil? || session[:name] == ""
      @user = params[:name]
      if @user
        session[:name] = @user
      else
        flash[:notice] = 'Username was not entered'
      end
      redirect_to login_path
    else
      redirect_to '/'
    end
  end

  def destroy
    session[:name] = nil
    flash[:notice] = 'Logged out!'
    redirect_to login_path
  end

end
