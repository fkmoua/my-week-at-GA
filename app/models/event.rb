class Event < ActiveRecord::Base

    belongs_to :week

    extend SimpleCalendar

    has_calendar :attribute => :date

    
end
