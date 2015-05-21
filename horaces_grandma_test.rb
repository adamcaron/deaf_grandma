require 'minitest'
require 'minitest/autorun'
require 'horaces_grandma.rb'

# Write a program which can imitate a Grandma who's hard of hearing and follows these rules:
#
# If you don't input anything (just hit enter) she responds with WHAT?!
#                                                                                                                     If you ask a question with any lower-case letters, she responds with SPEAK UP, KID!
# If you ask a question in all upper-case letters, she responds with NO, NOT SINCE 1946!
# The first time you say GOODBYE! she says LEAVING SO SOON?
# The second time you say GOODBYE! she says LATER, SKATER! and the program exits.

class GrandmaTest < Minitest::Test

  def test_grandma_exists
    assert Grandma
  end

  def test_grandma_says_what_to_an_empty_message
    grandma = Grandma.new
    comment = ""
    response = Grandma.answer(comment)
    assert_equal "WHAT?!", response
  end

  # HEY KID!
  # > hi, grandma
  # SPEAK UP, KID!
  # > I SAID HI, GRANDMA
  # NO, NOT SINCE 1946!
  # >
  #     WHAT?!
  # > Goodbye!
  # SPEAK UP, KID!
  # > GOODBYE!
  # LEAVING SO SOON?
  # > GOODBYE!
  # LATER, SKATER!

end