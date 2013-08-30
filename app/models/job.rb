class Job < ActiveRecord::Base
  belongs_to :user
  attr_accessible :category, :description, :how, :location, :needed, :pay, :pay_type, :start_date, :title,:hours
   validates :category, :title, :description, :how, :location, :needed,:hours, :pay, :pay_type, :start_date, presence: true
   validates :pay, :numericality => { :greater_than => 7.99 }
end

