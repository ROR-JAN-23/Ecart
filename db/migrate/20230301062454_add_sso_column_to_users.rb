# frozen_string_literal: true

class AddSsoColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    change_table :users do |t|
      t.string :uid
      t.string :provider
    end
  end
end
