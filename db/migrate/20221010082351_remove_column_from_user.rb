# frozen_string_literal: true

class RemoveColumnFromUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :password, :sring
  end
end
