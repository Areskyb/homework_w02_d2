
require('minitest/autorun')
require('minitest/rg')

require_relative('../fish')

class TestFish < MiniTest::Test

  def setup()
    @fish1 = Fish.new("Penelope")
    @fish2 = Fish.new("Nemo")
    @fish3 = Fish.new("Alfred")
  end

def test_attr_works
  assert_equal("Penelope",@fish1.name)
end


end
