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
  accepts_nested_attributes_for :lineitems, allow_destroy: true

  belongs_to :user

  validates :title, :length => { :minimum => 0 }
end
