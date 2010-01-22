class EmployeeDepartment < ActiveRecord::Base
  belongs_to :employee
  belongs_to :department
  named_scope :find_emp_dept, lambda { |emp_id| { :conditions => ["employee_id = ? ",emp_id] } }
end
