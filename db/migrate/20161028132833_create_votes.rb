class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :voter_id
      t.string :vote_descrption

      t.timestamps

    end
  end
end
