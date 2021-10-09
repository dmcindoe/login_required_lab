class SessionsController < ApplicationController
  def new; end

  def index; end

  def create
    if params[:name] == nil || params[:name] == "" 
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to :root
    end
  end

  def destroy
    session.delete :name
    redirect_to :root
    end
  end
