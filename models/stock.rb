class Stock
  ALL = []
  def initialize(name, target, current)
    @name=name
    @target=target
    @current=current
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
end