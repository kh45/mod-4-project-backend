class EventsController < ApplicationController
    def create
        event = Event.find_by(params[:id])
        Event.create(params[])
        render json: event
    end

    def delete
        event = Event.find_by(params[:id])
    end
end
