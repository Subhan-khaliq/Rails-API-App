# frozen_string_literal: true

module Api
  module V1
    class UsersController < ApplicationController
      before_action :set_user, only: %i[show update destroy]

      def index
        @users = User.all
        render json: @users
      end

      def show
        render json: @user
      end

      def create
        if User.create(user_params)
          render json: @user
        else
          render json: { errors: @user.errors.full_messages },
                 status: :unprocessable_entity
        end
      end

      def update
        if @user.update(user_params)
          render json: { message: 'User Successfully Updated' }, status: 200
        else
          render json: { errors: @user.errors.full_messages },
                 status: :unprocessable_entity
        end
      end

      def destroy
        if @user.destroy
          render json: { message: 'User Successfully Deleted' }, status: 200
        else
          render json: { errors: @user.errors.full_messages },
                 status: :unprocessable_entity
        end
      end

      private

      def set_user
        @user = User.find(params[:id])
      end

      def user_params
        params.require(:user).permit(:username, :password)
      end
    end
  end
end
