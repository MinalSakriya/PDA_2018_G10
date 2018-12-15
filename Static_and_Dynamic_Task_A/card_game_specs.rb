require('minitest/autorun')
require('minitest/rg')
require_relative('./card_game.rb')
require_relative('./card.rb')

class CardGameTest < MiniTest::Test

  def setup()
    @cardgame = CardGame.new()
    @card1 = Card.new(2, 1)
    @card2 = Card.new(2, 2)
  end

  def test_checkforAce_true()
    result = @cardgame.checkforAce(@card1)
    assert_equal(true, result)
  end

  def test_checkforAce_false()
    result = @cardgame.checkforAce(@card2)
    assert_equal(false, result)
  end


  def test_highest_card()
    result = @cardgame.highest_card(@card1, @card2)
    assert_equal(@card2, result)
  end

  def test_highest_card_1()
    result = @cardgame.highest_card(@card2, @card1)
    assert_equal(@card2, result)
  end


  def test_cards_total()
    total = CardGame.cards_total([@card1,@card2])
    assert_equal("You have a total of 3", total)
  end


end
