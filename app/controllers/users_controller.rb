class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

 def show
   @user = User.find(params[:id])
 end

 def user_params
   params.require(:user).permit( :first_name, :last_name, :profile_pic)
   
 end



end


