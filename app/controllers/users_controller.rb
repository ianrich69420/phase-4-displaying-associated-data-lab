class UsersController < ApplicationController
    def show
        render json: User.find(params[:id]), except: [:created_at, :updated_at], include: :items
    end
end
