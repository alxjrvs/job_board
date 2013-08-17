class Job < ActiveRecord::Base
  attr_accessible :category, :description, :how, :location, :needed, :pay, :start_date, :title,:hours
   validates :category, :title, :description, :how, :location, :needed,:hours, :pay,:start_date, presence: true
   validates :pay, :numericality => { :greater_than => 7.99 }
   
   belongs_to :user
end

