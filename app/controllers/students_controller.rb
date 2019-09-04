class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = find_student
  end

  def new
    @student = Student.new
  end

  def create
    # @student = Student.create(student_params)
    @student = Student.create({first_name: params[:first_name],last_name: params[:last_name]})
    redirect_to @student
  end

  private

  # def student_params
  #   params.require(:student).permit(:first_name, :last_name)
  # end

  def find_student
    Student.find(params[:id])
  end
end
