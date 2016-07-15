class JobItem

  attr_reader :quantity

  def initialize(unit_price, quantity, is_labor=false)
    @unit_price = unit_price
    @quantity = quantity
    @is_labor = is_labor
  end

  def total_price
    unit_price * @quantity
  end

  def unit_price
    labor? ? @employee.rate : @unit_price
  end

  protected 

  def labor?
    false
  end

end
