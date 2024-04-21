class UsersController < ApplicationController
    def pagPrincipal
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
        @spents = Spent.all
    end

    def new
    end

    def create
        @user = User.new

        @user.nombreUsuario = params[:users][:name]
        @user.password = params[:users][:password]

        @user.save

        redirect_to root_path
    end
end
