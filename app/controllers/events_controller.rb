class EventsController < ApplicationController
    def index
        @events = Event.all
    end

    def show
        @event = Event.find(params[:id])
    end

    def new
        @event = Event.new
    end

    def create
        @event = Event.new(params.require(:event).permit(:name, :date, :time, :location))

          if @event.save 
            redirect_to events_path
        else
            render :event             #if can't save to database (something goes wrong), show us that new page again.
        end 
    end

    def edit
        @event = Event.find(params[:id])
    end

    def update
        @event = Event.find (params[:id])

          if @event.update_attributes(params.require(:event).permit(:name, :date, :time, :location))
            redirect_to event_path
        else
            render :edit
        end
    end
end
