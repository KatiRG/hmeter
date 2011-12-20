class AddUserIdColumnToUsertables < ActiveRecord::Migration
  def change
    add_column :usertables, :user_id, :integer
  end
end
