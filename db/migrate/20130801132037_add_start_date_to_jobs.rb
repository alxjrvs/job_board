class AddStartDateToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :start_date, :Date
  end
end
