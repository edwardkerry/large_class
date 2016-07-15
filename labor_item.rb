class LaborItem < JobItem

  attr_reader :employee

  def initialize(quantity, employee)
    super(0, quantity)
    @employee = employee
  end

  def unit_price
    @employee.rate
  end

  protected

  def labor?
    true
  end

end
