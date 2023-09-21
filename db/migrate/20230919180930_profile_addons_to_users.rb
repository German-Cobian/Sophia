class ProfileAddonsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :display_name, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :city, :string
    add_column :users, :country, :string
    add_column :users, :bio, :text
  end
end
