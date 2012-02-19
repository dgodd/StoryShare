class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user, null: false
      t.references :story, null: false
      t.text :body, null: false

      t.timestamps
    end
  end
end
