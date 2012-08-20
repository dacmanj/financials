# == Schema Information
#
# Table name: financial_statements
#
#  id             :integer          not null, primary key
#  title          :string(255)
#  statement_date :date
#  chapter        :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class FinancialStatement < ActiveRecord::Base
  attr_accessible :title, :statement_date, :chapter, :user_id, :lineitems_attributes
  has_many :lineitems
  has_many :sections
  has_many :accounts
  accepts_nested_attributes_for :lineitems, allow_destroy: true

  typeArray = ["Statement of Activities", "Statement of Financial Position"]

  belongs_to :user

  validates :title, :length => { :minimum => 0 }
  
  def type
    typeArray.index(self.title);
  end
  

  
end
