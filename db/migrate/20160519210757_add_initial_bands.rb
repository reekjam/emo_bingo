class AddInitialBands < ActiveRecord::Migration
  def self.up
  	Band.create(name: 'My Chemical Romance')
  	Band.create(name: 'Brand New')
  	Band.create(name: 'Taking Back Sunday')
  	Band.create(name: 'Saves the Day')
  	Band.create(name: 'New Found Glory')
  	Band.create(name: 'The Get Up Kids')
  	Band.create(name: 'Saosin')
  	Band.create(name: 'Hawthorne Heights')
  	Band.create(name: 'Underoath')
  	Band.create(name: 'From First to Last')
  	Band.create(name: 'Jimmy Eat World')
  	Band.create(name: 'Sunny Day Real Estate')
  	Band.create(name: 'Alkaline Trio')
  	Band.create(name: 'Thrice')
  	Band.create(name: 'Thursday')
  	Band.create(name: 'Jawbreaker')
  	Band.create(name: 'Dashboard Confessional')
  	Band.create(name: 'Weezer')
  	Band.create(name: 'The Promise Ring')
  	Band.create(name: 'Further Seems Forever')
  	Band.create(name: 'Bayside')
  	Band.create(name: 'Senses Fail')
  	Band.create(name: 'Finch')
  	Band.create(name: 'Paramore')
  end

  def self.down
  	Band.delete_all
  end
end
