class RemoveJobIdFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :job_id
  end

  def down
    add_column :users, :job_id, :string
  end
end
