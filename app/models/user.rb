class User < ApplicationRecord
    has_many :users_events
    has_many :events, through: :users_events
end
