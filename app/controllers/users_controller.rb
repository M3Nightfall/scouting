class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
          redirect_to root_path
        else
          render 'new'
        end
      end

      def edit
        if !logged_in?
            #send them to login
        else
            #let them use website
        end

      end

        
    
      
     private
      
      def user_params
        params.require(:user).permit(:username, :password_digest)
      end

end