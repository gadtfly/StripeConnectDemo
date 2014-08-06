class AddStripeConnectToUsers < ActiveRecord::Migration
  def change
    add_column :users, :stripe_public_key, :string
    add_column :users, :stripe_secret_key, :string
  end
end
