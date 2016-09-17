# Every employee is going to have a name, and an email to notify them whenever we deposit money into their accounts.
# We have a couple of different salary types:
    #hourly, days worked
    #yearly
    #ted gets paid 60k, but if he works more than 40h he gets 275$ per hour

# employees = [josh, nizar, ted, marco, wim]


class Employee
    attr_accessor :name, :email
    def initialize(name, email)
        @name =name
        @email = email
    end
end

# module HourlyPay
#     def hourly_pay(hourly_rate, hours_worked)
#         hourly_rate * hours_worked
#     end
# end

#design HourlyEmployee, the SalariedEmployee, and the MultiPaymentEmployee classes

class HourlyEmployee < Employee
    def initialize(name, email, hourly_rate, hours_worked)
        @name = name
        @email = email
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end
    def calculated_salary
        @hours_worked * @hourly_rate
    end
    
end

class SalariedEmployee < Employee
    def initialize(name, email, yearly_rate)
        @name = name
        @email = email
        @yearly_rate = yearly_rate
    end
    def calculated_salary
        @yearly_rate
    end
end

class MultiPaymentEmployee < Employee
    def initialize(name, email, yearly_rate, hourly_rate, hours_worked)
        @name = name
        @email = email
        @yearly_rate = yearly_rate
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end
    def calculated_salary
        if @hours_worked > 40
            @yearly_rate + (@hourly_rate*@hours_worked)
        else
            @yearly_rate
        end
    end
end

#Create our Payroll class, and pay and notify ! 


josh = HourlyEmployee.new("josh", "josh@gmail.com", 30, 40)
nizar = SalariedEmployee.new("nizar", "nizar@gmail.com", 30000)
ted = MultiPaymentEmployee.new("ted", "ted@gmail.com", 30000, 50, 50)
marco = MultiPaymentEmployee.new("marco", "marcodiversi@gmail.com", 60000, 40, 30)
wim = SalariedEmployee.new("wim", "wim@gmail.com", 80000)


class Payroll 
    def initialize(employees)
        @employees = employees
    end
    
    def notify_employee(employee) 
        @employees.each do |employ|
        puts "An email was sent to #{employ.name} at #{employ.email} that got paid #{employ.calculated_salary} $"
     end
    end
    
    # def pay_employees 
    #     payments = []
    #     @employees.each do |employee|
    #         payments << [employee, employee.calculated_salary]
    #     end
    #     total_paid = payments.reduce(0.0) do |total, payment|
    #         total + payment[1]
    #     end
    #     [payments, total_paid]
    # end
end


employees = [josh, nizar, ted, marco, wim]
payroll = Payroll.new(employees)


#write some stuff on the screen 

payroll.notify_employee(employees)
