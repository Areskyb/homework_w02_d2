class River

  attr_reader :name, :fish_count

  def initialize(name,fish_count)
    @fish_count = []
    @name = name
  end

  def add_fishes(fishes)
    for fish in fishes
      @fish_count.push(fish)
    end
  end

  def deletes_fish(fish)
      @fish_count.delete(fish)
  end

    def how_many_fishes
       return @fish_count.length
    end



end
