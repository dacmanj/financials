class FinancialStatement < ActiveRecord::Base
  attr_accessible :title, :statement_date, :chapter, :user_id

  belongs_to :user

  validates :title, :length => { :minimum => 0 }
end
