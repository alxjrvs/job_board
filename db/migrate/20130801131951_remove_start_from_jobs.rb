class RemoveStartFromJobs < ActiveRecord::Migration
  def up
    remove_column :jobs, :start
  end

  def down
    add_column :jobs, :start, :string
  end
end
