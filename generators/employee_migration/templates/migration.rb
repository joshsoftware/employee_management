class CreateEmployeeManagement < ActiveRecord::Migration
  def self.up
    create_table :departments do |t|
      t.string :name
      t.string :description
      t.timestamps
    end
    
    create_table :employees do |t|
      t.string :employee_id 
      t.string :first_name 
      t.string :last_name 
      t.date :date_of_birth
      t.date :date_of_joining
      t.string :qualification
      t.integer :year_of_passing
      t.references :designation
      t.string :office_email
      t.string :personal_email
      t.string :mobile
      t.string :landline 
      t.text :current_address
      t.text :permanent_address
      t.string :pan_number
      t.string :passport_number
      t.date :passport_exp_date
      t.references :user
      t.string :photo_file_name
      t.string :photo_content_type
      t.integer :photo_file_size
      t.string :blog_url

      t.timestamps
    end

    create_table :hierarchies do |t|
      t.integer :employee_id
      t.integer :report_to # refer to the employee table
      t.string :description

      t.timestamps
    end

    create_table :designations do |t|
      t.string :name
      t.string :description
      t.timestamps
    end

    create_table :employee_departments do |t|
      t.references :employee
      t.references :department
      t.timestamps
    end

  end

  def self.down
    drop_table :departments
    drop_table :employees
    drop_table :hierarchies
    drop_table :designations
    drop_table :employee_departments
  end
end
