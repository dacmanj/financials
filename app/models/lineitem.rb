class Lineitem < ActiveRecord::Base
  attr_accessible :account, :amount, :section, :order
  belongs_to :financial_statement
  validates :account, :presence => true, :length => { :maximum => 140 }
  validates :amount, :presence => true

end
