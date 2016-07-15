class LaborItem < JobItem

  attr_reader :employee

  def initialize(quantity, employee)
    super(0, quantity, true)
    @employee = employee
  end

end
