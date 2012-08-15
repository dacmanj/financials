# == Schema Information
#
# Table name: sections
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  side       :integer
#

class Section < ActiveRecord::Base
  validates :name, :presence => true;
  validates :side, :presence => true;
end
