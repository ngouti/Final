class UsersController < ApplicationController
    skip_before_action :authorized, only: [:new, :create]
    def index
      @users = User.all
    end
  
    def show
      @user = User.find(params[:id])
      if logged_in?
        flash[:msg] = "Welcome #{current_user.username}"
      end
      if params[:id] != current_user.id.to_s
        flash[:unauthorized] = "Unauthorized Access"
        redirect_to user_path(current_user)
      end
    end
  
  
    def new
      @user = User.new
    end
  
    def create
      @user = User.new(user_params)
      if @user.valid?
        @user.save
        redirect_to user_path(@user)
      else
        flash[:error] = "Wrong Password or Username"
        redirect_to new_user_path
      end
    end
  
  
    def edit
      @user = User.find(params[:id])
    end
  
  
    def update
      @user = User.find(params[:id])
      if @user.update(user_params)
        redirect_to user_path(user)
      else
        render :edit
      end
    end
  
    def destroy
      User.find(params[:id]).destroy
    end

    private
    
    def user_params
        params.require(:user).permit(:email, :username, :password, :password_confirmation)
    end

end
