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
        # @event = Event.new(params.require(:event).permit(:name, :date, :time, :location))

        if @week.save!
            redirect_to weeks_path
        else
            render :weeks             #if can't save to database (something goes wrong), show us that new page again.
        end 
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

    def destroy
        @week = Week.find(params[:id])
        @week.destroy
        redirect_to weeks_path
    end

end