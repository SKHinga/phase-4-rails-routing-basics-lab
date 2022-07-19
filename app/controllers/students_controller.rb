class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: students
  end

  def grades
    student = Student.all.order(grade: :desc)
    render json: student
  end

  def highest_grade
    student = Student.all.order(grade: :desc).first
    render json: student
  end
end
