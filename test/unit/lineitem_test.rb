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
#

require 'test_helper'

class LineitemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
