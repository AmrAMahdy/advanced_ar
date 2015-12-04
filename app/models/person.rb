class Person < ActiveRecord::Base
  has_one :personal_info, dependent: :destroy
  has_many :jobs, dependent: :destroy
  has_many :my_jobs, class_name: "Job"
  has_and_belongs_to_many :hobbies
  has_many :approx_salaries, through: :jobs, source: :salary_range

  def max_salary
    approx_salaries.maximum(:max_salary)
  end
end
