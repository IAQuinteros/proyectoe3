class AddFollowedUserToFollowers < ActiveRecord::Migration[8.0]
  def change
    add_reference :followers, :followed_user, null: false, foreign_key: { to_table: :users }
  end
end
