class StaticPagesController < ApplicationController
  before_action :authenticate_user!
  def home
  end

  def about
  end

  def help
  end
  
  def profile
  	@username = params[:id]
  end
end
