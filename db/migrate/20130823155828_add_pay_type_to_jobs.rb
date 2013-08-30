class AddPayTypeToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :pay_type, :string
  end
end
