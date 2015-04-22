class UsersController < ApplicationController

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
        @user = User.new(params.require(:user).permit(:name,:email,:photo,:password))

        if @user.save 
            redirect_to users_path
        else
            render :new
        end
    end

   
end
