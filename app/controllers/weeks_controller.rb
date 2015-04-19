class WeeksController < ApplicationController

    def index
        @weeks = Week.all
    end

    def show
        @week = Week.find(params[:id])
        @events = Event.all
    end

    def new
        @week = Week.new
        @event = Event.new
    end

    def create
        @week = Week.new(params.require(:week).permit(:name, :date, :message, :this_week, :next_week, :office_hours))

        if @week.save 
            redirect_to root_path
        else
            render :week             #if can't save to database (something goes wrong), show us that new page again.
        end 

        @event = Event.new(params.require(:event).permit(:name, :date, :time, :location))
        
    end

    def edit
        @week = Week.find(params[:id])
    end

    def update
        @week = Week.find(params[:id])

        if @week.update_attributes(params.require(:week).permit(:name, :date, :message, :this_week, :next_week, :office_hours))
            redirect_to week_path
        else
            render :edit
        end
    end

end
