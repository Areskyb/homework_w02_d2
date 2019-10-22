require('minitest/autorun')
require('minitest/rg')

require_relative('../fish')
require_relative('../bear')
require_relative('../river')

class TestBear < MiniTest::Test

  def  setup()

    @bear = Bear.new("Juan","Polard Bear")
    @fish1 = Fish.new("Penelope")
    @fish2 = Fish.new("Nemo")
    @fish3 = Fish.new("Alfred")
    @river = River.new("AmazonWs river", @fishes)
    @fishes = [@fish1,@fish2, @fish3]


  end

def test_bear_takes_fish
  @bear.take_fish(@fish2, @river)
  assert_equal(@bear.stomach, [@fish2])
end

def test_roar
  assert_equal("I am roaring :)", @bear.roar)
end

def test_food_count
  @river.add_fishes(@fishes)
  @bear.take_fish(@fish1,@river)
  assert_equal(1,@bear.food_count)
end

end
