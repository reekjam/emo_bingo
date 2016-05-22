require 'spec_helper'

describe 'Card' do
  it 'should initialize a board with 25 entries' do
    card = Card.new

    expect(card.board.count).to eq 25
  end

  it 'should include a "FREE" tile in the center of the board' do
    card = Card.new

    expect(card.board[12]).to eq 'FREE'
  end
end