class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.references :user, null: false
      t.string :title, null: false
      t.text :body, null: false

      t.timestamps
    end
  end
end
