class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :email
  has_many :financial_statements
end
