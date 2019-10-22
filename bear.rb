class Bear

  attr_reader :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def take_fish(fish,river)
    @stomach.push(fish)
    river.deletes_fish(fish)
  end

  def roar
    return "I am roaring :)"
  end

  def food_count
    return @stomach.length
  end



end
