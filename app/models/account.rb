# == Schema Information
#
# Table name: accounts
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  section_id :integer
#

class Account < ActiveRecord::Base
  attr_accessible :name, :section_id, :side
  belongs_to :section;
  
  def section
      account = Section.find(self.section_id).name
  end

  def side
      account = Section.find(self.section_id).side
  end
  
end
