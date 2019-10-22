require('minitest/autorun')
require('minitest/rg')

require_relative('../fish')
require_relative('../bear')
require_relative('../river')
class TestRiver < MiniTest::Test

  def  setup()
    @bear = Bear.new("Juan","Polard Bear")

    @fish1 = Fish.new("Penelope")
    @fish2 = Fish.new("Nemo")
    @fish3 = Fish.new("Alfred")

    @fishes = [@fish1,@fish2, @fish3]

    @river = River.new("AmazonWs river", @fishes)
  end

  def test_add_fishes
    @river.add_fishes(@fishes)
    assert_equal(3,@river.fish_count.length)
  end

  def test_deletes_fish
    @river.add_fishes(@fishes)
    @river.deletes_fish(@fish2)
    assert_equal(2,@river.fish_count.length)
  end

  def test_bear_takes_fish
   @river.add_fishes(@fishes)
   @bear.take_fish(@fish3,@river)
   assert_equal(2, @river.fish_count.length)
  end

  def test_fish_count
    assert_equal(0,@river.how_many_fishes)
  end



end
