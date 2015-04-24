class Week < ActiveRecord::Base

    has_many :events
    has_many :resources
    accepts_nested_attributes_for :events

end
