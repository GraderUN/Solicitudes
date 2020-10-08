class UsersController < ApplicationController
  before_action :authenticate!, only: :index
  def index
    render json: User.all
  end
end
