class AddUserIdToSnacks < ActiveRecord::Migration
  def change
    add_column :snacks, :user_id, :integer
    add_index :snacks, :user_id
  end
end
