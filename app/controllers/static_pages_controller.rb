class StaticPagesController < ApplicationController
  before_action :authenticate_user!
  def home
    @user = User.all
  end

  def about
  end

  def help
  end
  
  def profile
  	@user = User.find_by(username:(params[:id]))
  end
end
