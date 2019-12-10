class WelcomeController < ApplicationController
  
  def index
    flash[:notice] = "Welcome to our store"
  end
  
end
