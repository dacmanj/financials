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

class Section < ActiveRecord::Base
  has_many :accounts
  validates :name, :presence => true;
end
