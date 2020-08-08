class CreateUserFollowers < ActiveRecord::Migration[5.2]
  def change
    create_table :user_followers do |t|
      t.integer :following_user_id
      t.integer :follow_to_user_id	
      t.timestamps
    end
  end
end
