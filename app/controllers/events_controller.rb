class EventsController < ApplicationController
    has_many :users_events
    has_many :users, through: :users_events
end
