class EventsController < ApplicationController
    def create
        event = Event.create(name: params[:name], date: params[:date], start: params[:start], venue: params[:venue], image: params[:image], api_id: params[:api_id])
        userevent = UserEvent.create(event_id: event.id, user_id: params[:user_id])
        render json: {event: event, user_event: userevent}
    end

    def delete
        event = Event.find_by(params[:event_id])
        event.delete
        userevent = UserEvent.find_by(params[:user_event_id])
        userevent.delete
        render json: {event: event, user_event: userevent}
    end
end
