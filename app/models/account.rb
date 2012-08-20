# == Schema Information
#
# Table name: accounts
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  section_id :integer
#  side       :integer
#

class Account < ActiveRecord::Base
  attr_accessible :name, :section_id, :side_name, :side
  belongs_to :section;
  before_save {
    if self.side == 0
      self.side = self.section.side;
    end

  }
  def section_name
      self.section.name
  end

  def side_name
      sideText = ['Debit', 'Invalid', 'Credit'] 
      sideText[self.side.nil? ? 0 : self.side+1 ]
  end
  
end
