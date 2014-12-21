class Stock
  ALL = []
  def initialize(name, target, current)
    @name=name
    @target=target.to_f
    @current=current.to_f
    if @target
      @percentage_difference = @target/@current
    end

    ALL << self
  end

  def name
    @name
  end

  def target
    @target
  end

  def current
    @current
  end

  def self.all
    ALL
  end

  def create_percentage_difference
    @percentage_difference.to_s + "%"
  end
end


class Float
  def round_to(x)
    (self * 10**2).round.to_f / 10**2
  end

  def ceil_to(x)
    (self * 10**2).ceil.to_f / 10**2
  end

  def floor_to(x)
    (self * 10**2).floor.to_f / 10**2
  end
end