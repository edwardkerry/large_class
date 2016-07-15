class LaborItem < JobItem

  attr_reader :employee

  def initialize(quantity, employee)
    super(0, quantity)
    @employee = employee
  end

  protected

  def labor?
    true
  end

end
