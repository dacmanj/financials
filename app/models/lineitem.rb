# == Schema Information
#
# Table name: lineitems
#
#  id         :integer          not null, primary key
#  account    :string(255)
#  amount     :decimal(, )
#  section    :string(255)
#  order      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Lineitem < ActiveRecord::Base
  attr_accessible :account, :amount, :section, :order
  belongs_to :financial_statement
  validates :account, :presence => true, :length => { :maximum => 140 }
  validates :amount, :presence => true

end
