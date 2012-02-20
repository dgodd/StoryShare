class AddGoogleId < ActiveRecord::Migration
  def change
    add_column :users, :google_id, :string, :default => nil, :unique => true
    add_index :users, :google_id, :unique => true
  end
end
