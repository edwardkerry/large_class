class JobItem

  attr_reader :quantity

  def initialize(unit_price, quantity, is_labor=false, employee=nil)
    @unit_price = unit_price
    @quantity = quantity
    @is_labor = is_labor
    @employee = employee
  end

  def total_price
    unit_price * @quantity
  end

  def unit_price
    labor? ? @employee.rate : @unit_price
  end

  def labor?
    @is_labor
  end

end
