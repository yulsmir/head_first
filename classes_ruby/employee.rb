class Employee
  attr_reader :name, :salary

  def name=(name)
    if name == ""
      raise "Name can't be blank!"
    end
    @name = name
  end

  def salary=(salary)
    if salary < 0
      raise "A salary of #{salary} isn't valid!"
    end
    @salary = salary
  end

  def initialize(name = 'Anonymous', salary = 0.0)
    self.name = name
    self.salary = salary
  end

  def print_pay_stub
    puts "Name: #{self.name}"
    pay_for_period = (self.salary / 365.0) * 14
    formated_pay = format("%.2f", pay_for_period)
    puts "Pay this period: $#{formated_pay}"
  end
end

employee = Employee.new("Amy Blake", 50000)
employee.print_pay_stub

# Employee.new.print_pay_stub

empl = Employee.new("Lolo", 30000).print_pay_stub