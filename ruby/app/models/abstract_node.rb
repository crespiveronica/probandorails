class AbstractNode

  attr_accessor :value

  def set_value(value)
    @value = value
  end

  def to_s
    self.value
  end

end