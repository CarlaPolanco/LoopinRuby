class SpentsController < ApplicationController

    def index
        @spents = Spent.all
    end

    def new  
    end

    def show
        @spent = Spent.find(params[:id])
    end

    def edit
        @id = params[:id]
    end

    def update
        @spent = Spent.find(params[:id])

        
        @spent.monto = params[:spents][:monto]
        @spent.descripcion = params[:spents][:descripcion]
        @spent.boleta_img = params[:spents][:boleta_img]
        @spent.estado = params[:spents][:estado]
        @spent.id_user = params[:spents][:id_user]

        @spent.save

        redirect_to "/spents/#{params[:id]}"

    end

    def destroy
        @spent = Spent.find(params[:id])
        @spent.destroy

        redirect_to "/spents"
    end

    def create
        @spents = Spent.new

        
        @spents.monto = params[:spents][:monto]
        @spents.descripcion = params[:spents][:descripcion]
        @spents.boleta_img = params[:spents][:boleta_img]
        @spents.estado = "en espera"
        @spents.id_user = params[:spents][:id_user]

        @spents.save

        redirect_to root_path
    end
end
