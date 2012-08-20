# == Schema Information
#
# Table name: lineitems
#
#  id                     :integer          not null, primary key
#  amount                 :decimal(, )
#  order                  :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  financial_statement_id :integer
#  user_id                :integer
#  account_id             :integer
#  section_id             :integer
#

class Lineitem < ActiveRecord::Base
  attr_accessible :amount, :section_id, :order, :financial_statement_id, :account_id, :user_id, :account_attributes
  belongs_to :financial_statement
  belongs_to :account
  belongs_to :section
   validates :amount, :presence => true
  validates :account_id, :presence => true
  accepts_nested_attributes_for :account

  
  def account
      account = Account.find(self.account_id).name
  end

end
