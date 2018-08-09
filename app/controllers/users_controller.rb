class UsersController < ApplicationController
  
  def index
    @users = User.all
    render("user_templates/index.html.erb")
  end
  
  def show
    @user = User.find(params[:user_id])
    render("user_templates/show.html.erb")
  end
  
end 