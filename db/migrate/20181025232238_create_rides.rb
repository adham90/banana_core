# frozen_string_literal: true

class CreateRides < ActiveRecord::Migration[5.2]
  def change
    create_table :rides, id: :uuid do |t|
      t.references :user, foreign_key: true, type: :uuid
      t.references :bike, foreign_key: true, type: :uuid
      t.datetime :started_at, null: false
      t.datetime :ended_at

      t.timestamps
    end
  end
end
