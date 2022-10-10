# frozen_string_literal: true

module Api
  module V1
    class HobbiesController < ApplicationController
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
          render json: { errors: @hobby.errors.full_messages },
                 status: :unprocessable_entity
        end
      end

      def update
        if @hobby.update(hobby_params)
          render json: { message: 'Hobby Updated Successfully' }, status: 200
        else
          render json: { errors: @hobby.errors.full_messages },
                 status: :unprocessable_entity
        end
      end

      def destroy
        if @hobby.destroy
          render json: { message: 'Hobby Deleted Successfully' }, status: 200
        else
          render json: { errors: @hobby.errors.full_messages },
                 status: :unprocessable_entity
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
  end
end
