class UsersController < ApplicationController
    def index
        users = User.all 
        render json: users.to_json
    end
    
    def create
        newUser = User.create(name: params["name"], password: params["phone_number"], email: params["email"])
        render json: newUser
    end
end
