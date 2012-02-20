class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.references :user
      t.date :due_at
      t.string :title
      t.text :body

      t.timestamps
    end

    add_column :stories, :assignment_id, :integer
  end
end
