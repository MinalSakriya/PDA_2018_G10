### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby   

class CardGame


  def checkforAce(card)
    if card.value = 1 # It should be two == sign instead of one =
      return true
    else
      return false
    end
  end


  dif highest_card(card1 card2) #This is how it should be: def highest_card(card1, card2)
  if card1.value > card2.value
    return card   # it should be : return card1
  else
    return card2
  end
end
end  #This is the end which should be after the self.cards_total(cards) method.This is the end required for the class CardGame.

def self.cards_total(cards)
  total  #The total should be initialized to 0: total = 0
  for card in cards
    total += card.value
    return "You have a total of" + total # The total should be converted into a string: total.to_s and return should be outside the for loop.
  end
end
```       
