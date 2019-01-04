class SessionsController < ApplicationController
    skip_before_action :authorized, only: [:new, :create]
    def new

    end

    def create
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            #YOU ARE WHO YOU SAY YOU ARE
            redirect_to user_path(@user)
        else
            flash[:error] = ["Username & Password do not match"]
                redirect_to new_session_path
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to login_path
      end
end


