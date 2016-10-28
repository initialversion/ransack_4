class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :commenter_id
      t.string :comment_description

      t.timestamps

    end
  end
end
