# == Schema Information
#
# Table name: lineitems
#
#  id                     :integer          not null, primary key
#  amount                 :decimal(, )
#  section                :string(255)
#  order                  :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  financial_statement_id :integer
#  user_id                :integer
#  account_id             :integer
#

class Lineitem < ActiveRecord::Base
  attr_accessible :amount, :section, :order, :financial_statement_id, :account_id, :user_id
  belongs_to :financial_statement
  belongs_to :account
  validates :amount, :presence => true
  validates :account_id, :presence => true

  def account
      account = Account.find(self.account_id).name
  end

end
