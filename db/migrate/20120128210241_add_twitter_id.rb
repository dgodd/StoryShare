class AddTwitterId < ActiveRecord::Migration
  def change
    add_column :users, :twitter_id, :string, :default => nil, :unique => true
    add_index :users, :twitter_id, :unique => true
  end
end
