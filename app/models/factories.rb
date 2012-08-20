module MyAbstractFinancialStatementFactory
  def create(title)
    raise NotImplementedError, "You should implement this method"
  end
end

class FinancialStatementFactory
  include MyAbstractFinancialStatementFactory

  def initialize(number_of_accounts, fs_type=>"Statement of Activities")  
    if fs_type == :rpg
      title = 'Final Fantasy'
      game_factory = RpgFactory.new
    elsif game_type== :arcade
      title = 'Double Dragon'
      game_factory = ArcadeFactory.new
    end
        
    @games = []
    number_of_games.times do |i|
      @games << game_factory.create("#{title} #{i+1}")
    end
  end 
  
  def show_games
    @games.each {|game| game.description} 
  end
end

#    @lineitems = @financial_statement.lineitems.build(:account_id => Account.find_by_name("Special Events").id)
