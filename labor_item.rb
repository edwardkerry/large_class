class LaborItem < JobItem

  def initialize(quantity, employee)
    super(0, quantity, true, employee)
  end

end
