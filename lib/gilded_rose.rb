class GildedRose
  attr_reader :name, :days_remaining, :quality

  def initialize(name:, quality:, days_remaining:)
    @item = ???.new(quality, days_remaining)
  end


  def 

    # Code from Sandi Metz's solution in the Confreaks video,
    # and Jim Weirich provided the original code.
    case name
    when 'Normal Item'
      Normal
    when 'Aged Brie'
      Brie
    when 'Sulfuras, Hand of Ragnaros'
      Sulfuras
    when 'Backstage passes to a TAFKAL80ETC concert'
      Backstage
    end

  end
  

  # Code from Sandi Metz's solution in the Confreaks video,
  # and Jim Weirich provided the original code.
  def quality
    return item.quality if item
    @quality
  end

  def days_remaining
    return item.days_remaining if item
    @days_remaining
  end
end


class Normal
attr_reader :quality, :days_remaining

def initialize(quality, days_remaining)
  @quality, @days_remaining = quality, days_remaining
end

  # Code from Sandi Metz's solution in the Confreaks video,
  # and Jim Weirich provided the original code.
  def tick
    @days_remaining -= 1
    return if @quality == 0

    @quality -= 1
    @quality -= 1 if @days_remaining <= 0
  end
end


class Brie
  attr_reader :quality, :days_remaining

  def initialize(quality, days_remaining)
    @quality, @days_remaining = quality, days_remaining
  end

  # Code from Sandi Metz's solution in the Confreaks video,
  # and Jim Weirich provided the original code.
  def tick
    @days_remaining -= 1
    return if @quality >= 50

    @quality += 1
    @quality += 1 if @days_remaining <= 0 && @quality < 50
  end
end

class Sulfuras
  attr_reader :quality, :days_remaining

  def initialize
    @quality, @days_remaining = quality, days_remaining
  end

  def tick
  end
end

class Backstage
  attr_reader :quality, :days_remaining

  def initialize
    @quality, @days_remaining = quality, days_remaining
  end

  def tick
    @days_remaining -= 1
    return              if @quality >= 50
    return @quality = 0 if @days_remaining < 0

    @quality += 1
    @quality += 1 if @days_remaining < 10
    @quality += 1 if @days_remaining < 5
  end
end