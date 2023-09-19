class ProfileAddonsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :display_name, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :location, :string
    add_column :users, :join_date, :date
    add_column :users, :bio, :text
  end
end
