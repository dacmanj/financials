# == Schema Information
#
# Table name: lineitems
#
#  id                     :integer          not null, primary key
#  account                :string(255)
#  amount                 :decimal(, )
#  section                :string(255)
#  order                  :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  financial_statement_id :integer
#  user_id                :integer
#

require 'test_helper'

class LineitemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
