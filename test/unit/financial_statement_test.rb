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

require 'test_helper'

class FinancialStatementTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
