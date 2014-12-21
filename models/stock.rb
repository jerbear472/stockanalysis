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
    loc=@target/@current
    @percentage_difference = loc.to_s + "%"
  end

  def create_percentage_difference
    @percentage_difference
  end
end