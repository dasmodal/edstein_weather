# frozen_string_literal: true

class CreateTemperatures < ActiveRecord::Migration[7.0]
  def change
    create_table :temperatures do |t|
      t.float :value, null: false
      t.string :unit, null: false
      t.datetime :time, index: { unique: true }, null: false

      t.timestamps
    end
  end
end
