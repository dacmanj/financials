# == Schema Information
#
# Table name: sections
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  order          :integer
#  statement_type :integer
#

require 'spec_helper'

describe Section do
  pending "add some examples to (or delete) #{__FILE__}"
end
