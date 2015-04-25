class ResourcesController < ApplicationController
    def index
        @resources = Resource.all

    end

    def show
        @event = Resource.find(params[:id])
    end

    def new
        @week = Week.find(params[:id])
        @resource = @week.resources.new
    end

    def create
        @week = Week.find(params[:id])
        @resource = @week.resources.new(params.require(:resource).permit(:name, :url, :category, :description))
        @resource.save
        redirect_to resources_path

        # if @event.save 
        #     redirect_to weeks_path
        #  else
        #      render :new             #if can't save to database (something goes wrong), show us that new page again.
        #  end 
    end

    def edit
    end

    def update
    end
end
