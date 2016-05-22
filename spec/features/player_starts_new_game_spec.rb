require 'spec_helper'

describe 'A player starting a new game' do
  before(:each) do
    FactoryGirl.create(:band, name: 'Alkaline Trio')
    FactoryGirl.create(:band, name: 'Bayside')
    FactoryGirl.create(:band, name: 'Brand New')
    FactoryGirl.create(:band, name: 'Dashboard Confessional')
    FactoryGirl.create(:band, name: 'Finch')
    FactoryGirl.create(:band, name: 'From First to Last')
    FactoryGirl.create(:band, name: 'Further Seems Forever')
    FactoryGirl.create(:band, name: 'Hawthorne Heights')
    FactoryGirl.create(:band, name: 'Jawbreaker')
    FactoryGirl.create(:band, name: 'Jimmy Eat World')
    FactoryGirl.create(:band, name: 'My Chemical Romance')
    FactoryGirl.create(:band, name: 'New Found Glory')
    FactoryGirl.create(:band, name: 'Paramore')
    FactoryGirl.create(:band, name: 'Saosin')
    FactoryGirl.create(:band, name: 'Saves the Day')
    FactoryGirl.create(:band, name: 'Senses Fail')
    FactoryGirl.create(:band, name: 'Sunny Day Real Estate')
    FactoryGirl.create(:band, name: 'Taking Back Sunday')
    FactoryGirl.create(:band, name: 'The Get Up Kids')
    FactoryGirl.create(:band, name: 'The Promise Ring')
    FactoryGirl.create(:band, name: 'Thrice')
    FactoryGirl.create(:band, name: 'Thursday')
    FactoryGirl.create(:band, name: 'Underoath')
    FactoryGirl.create(:band, name: 'Weezer')
  end

  it 'should list the bands index on the root page' do
    visit root_path
    expect(page).to have_selector :xpath, '//table/tbody/tr[24]'
  end

  it 'should display a 5x5 board' do
    visit start_path
    expect(page).to have_selector :xpath, '//table[@class="card"]/tbody/tr[1]'
    expect(page).to have_selector :xpath, '//table[@class="card"]/tbody/tr[2]'
    expect(page).to have_selector :xpath, '//table[@class="card"]/tbody/tr[3]'
    expect(page).to have_selector :xpath, '//table[@class="card"]/tbody/tr[4]'
    expect(page).to have_selector :xpath, '//table[@class="card"]/tbody/tr[5]'
  end
end