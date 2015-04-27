class EventsController < ApplicationController
 extend SimpleCalendar
 has_calendar
    
    def index
        @events = Event.all
    end

    def show
        @week = Week.find(params[:id])
        @event = @week.events.find(params[:id])
    end

    def new
        @week = Week.find(params[:id])
        @event = @week.events.new
    end

    def create
        @week = Week.find(params[:id])
        @event = @week.events.new(params.require(:event).permit(:name, :date, :time, :location))
        @event.save
        redirect_to week_path

        # if @event.save 
        #     redirect_to weeks_path
        #  else
        #      render :new             #if can't save to database (something goes wrong), show us that new page again.
        #  end 
    end

    def edit
        @week = Week.find(params[:id])
        @event = @week.events.find(params[:id])
    end

    def update
        @event = Event.find(params[:id])

          if @event.update_attributes(params.require(:event).permit(:name, :date, :time, :location))
            redirect_to event_path
        else
            render :edit
        end
    end

    def destroy
        @week = Week.find(params[:id])
        @event = @week.events.find(params[:id])
        @event.destroy
        redirect_to events_path
    end
end
