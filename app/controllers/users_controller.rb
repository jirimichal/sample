class UsersController < ApplicationController
  
  
  def show
    @user = User.find(params[:id])
    #raise params.inspect
  end
  
  def new
    @user = User.new
  end
  
  def create
    params.permit!
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Welcome to the Sample Application!"
      redirect_to @user
    else
      render 'new'
    end
    
  end
  # def user_params
    # params.require(:user).permit(:name, :email, :password, :password_confiramtion)
  # end
end
