class AddUserIdToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :user_id, :integer, :default  => 1
  end
end
