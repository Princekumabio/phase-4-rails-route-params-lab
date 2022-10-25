class Student < ApplicationRecord

  def to_s
    "#{first_name} #{last_name}"
  end
 
  def show
     student = Student.find_by(id: params[:id])
     render json: student
  end
end
