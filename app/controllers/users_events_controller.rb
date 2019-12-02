class UsersEventsController < ApplicationController
    belongs_to :users 
    belongs_to :events 
end
