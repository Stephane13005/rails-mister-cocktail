# frozen_string_literal: true

class AddDescriptionToDoses < ActiveRecord::Migration[6.0]
  def change
    add_column :doses, :description, :string
  end
end
