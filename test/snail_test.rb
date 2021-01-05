require 'minitest/autorun'
require 'minitest/pride'
require './lib/snail'

class SnailThingTest < Minitest::Test
  def test_three_by_three
    arrayMatrix = [
                    [1, 2, 3],
                    [4, 5, 6],
                    [7, 8, 9]
                  ]

    assert_equal [1,2,3,6,9,8,7,4,5], SnailThing.path(arrayMatrix)
  end

  def test_four_by_four
    arrayMatrix = [
                    [1, 2, 3, 4],
                    [5, 6, 7, 8],
                    [9, 10, 11, 12],
                    [13, 14, 15, 16]
                  ]

    assert_equal [1, 2, 3, 4, 8, 12, 16, 15, 14, 13, 9, 5, 6, 7, 11, 10], SnailThing.path(arrayMatrix)
  end
end
