class Week < ActiveRecord::Base

    has_many :events, dependent: :destroy
    has_many :resources, dependent: :destroy
    accepts_nested_attributes_for :events

end
