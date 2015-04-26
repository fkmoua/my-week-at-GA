class UsersController < ApplicationController
    before_action :require_login, except: [:new, :create]

    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(params.require(:user).permit(:name,:email,:photo,:password, :password_confirmation))

        if @user.save 
            session[:user_id] = @user.id.to_s
            flash[:welcome] = "Thanks for creating your account, #{@user.name}!"
            redirect_to weeks_path
        else
            render :new
        end
    end

   
end
