class ResourcesController < ApplicationController
    def index
        @resources = Resource.all
    end

    def show
        @resource = Resource.find[params[:id]]
    end

    def new
        @resource = Resource.new
    end

    def create
        @resource = Resource.new(params.require(:resource).permit(:name, :url, :category))

        if @resource.save
            redirect_to resources_path
        else
            render :new
        end
    end

    def edit
    end

    def update
    end
end
