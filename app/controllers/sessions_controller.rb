class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/'
    else
      session[:name] = params[:name]
      redirect_to '/secret'
    end
  end

  def destroy
    session.delete :name
  end


end
