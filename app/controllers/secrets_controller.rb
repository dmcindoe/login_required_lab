class SecretsController < ApplicationController
    before_action :require_login

    def show
      @secret = " is really cool."
    end
  
    private
  
    def require_login
      redirect_to login_path unless session.include? :name
    end
  end