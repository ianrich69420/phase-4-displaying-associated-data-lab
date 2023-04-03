class ItemsController < ApplicationController
    def index
        render json: Item.all, except: [:user_id, :created_at, :updated_at], include: :user
    end
end
