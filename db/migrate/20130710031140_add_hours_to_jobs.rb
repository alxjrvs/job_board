class AddHoursToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :hours, :decimal
  end
end
