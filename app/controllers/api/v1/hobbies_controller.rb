class Api::V1::HobbiesController < ApplicationController
  before_action :set_hobbies, only: %i[show destroy update]

  def index
    @hobbies = Hobby.all
    render json: @hobbies
  end

  def show
    render json: @hobby
  end

  def create
    if Hobby.create(hobby_params)
      render json: @hobby
    else
      render json: {error: "Something Went Wrong"},status: 400
    end

  end

  def update
    if @hobby.update(hobby_params)
      render json: {message: "Hobby Updated Successfully"}, status: 200
    else
      render json: {error: "Something Went Wrong"}, status: 400
    end

  end

  def destroy
    if @hobby.destroy
      render json: {message: "Hobby Deleted Successfully"}, status: 200
    else
      render json: {error: "Something Went Wrong"}, status: 400
    end

  end

  private

  def set_hobbies
    @hobby = Hobby.find(params[:id])
  end

  def hobby_params
    params.require(:hobbies).permit(:hobby, :likes, :user_id)
  end

end
