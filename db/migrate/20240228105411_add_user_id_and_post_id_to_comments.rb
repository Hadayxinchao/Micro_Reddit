class AddUserIdAndPostIdToComments < ActiveRecord::Migration[7.1]
  def change
    add_column :comments, :user_id, :integer
    add_index :comments, :user_id
    add_column :comments, :post_id, :integer
    add_index :comments, :post_id
  end
end
