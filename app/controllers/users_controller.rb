class UsersController < ApplicationController
    def index
        @users = User.all
    end
    def new
        @user = User.new
    end
    def show 
        @user=User.find(params[:id])
    end
    def create
        @user=User.new(user_params)
        if @user.save
            render 'new'
        else
            render 'new'
        end
    end

    private
        def user_params
            params.require(:user).permit(:username,:email,:address,:mobile,:pincode,:password)
        end
end
