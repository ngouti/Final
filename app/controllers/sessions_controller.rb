class SessionsController < ApplicationController
    before_action :access
   skip_before_action :access, only: [:new, :create]
    def new

    end

    def create
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            #YOU ARE WHO YOU SAY YOU ARE
            redirect_to user_path(@user)
        else
            flash[:errors] = @user.errors.full_messages
                redirect_to new_session_path
        end
    end

    def destroy
        session.delete(:user_id)
        redirect_to login_path
      end

      private

      def access
        return head(:forbidden) unless session.include? :user_id
      end
end


