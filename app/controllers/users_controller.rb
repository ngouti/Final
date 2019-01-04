class UsersController < ApplicationController
  before_action :access
   skip_before_action :access, only: [:new, :create]
    def index
      @users = User.all
    end
  
    def show
      @user = User.find(params[:id])
      if logged_in?
        flash[:msg] = "Welcome #{current_user.username}"
      end

    end
  
  
    def new
      @user = User.new
    end
  
    def create
      @user = User.new(user_params)
      if @user.valid?
        @user.save
        redirect_to login_path
      else
        flash[:errors] = @user.errors.full_messages
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

    def access
      return head(:forbidden) unless session.include? :user_id
    end

end
