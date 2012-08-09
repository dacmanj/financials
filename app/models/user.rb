class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :email
  has_many :financial_statements
  def initialize(attributes = {})
    @first_name  = attributes[:first_name]
    @last_name  = attributes[:last_name]
    @email = attributes[:email]
  end

  def formatted_email
    "#{@first_name} #{@last_name} <#{@email}>"
  end
end
