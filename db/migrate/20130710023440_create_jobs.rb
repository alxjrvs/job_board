class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :category
      t.string :title
      t.text :description
      t.string :location
      t.integer :needed
      t.decimal :pay
      t.string :start
      t.string :how

      t.timestamps
    end
  end
end
