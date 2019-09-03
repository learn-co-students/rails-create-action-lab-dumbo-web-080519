class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new(params[:student])
  end

  # def create
  #   # @student = Student.create(params[:student][:first_name],params[:student][:last_name])
  #   @student = Student.new
  #   @student.first_name = params[:first_name]
  #   @student.last_name = params[:last_name]
  #   @student.save
  #   redirect_to student_path(@student)
  #   # redirect_to :show
  # end

  def create
   @student = Student.create(
     {
       first_name: params[:first_name],
       last_name: params[:last_name]
     }
   )
   redirect_to student_path(@student)
 end

  # private

  # def set_student
  #   params.require(:student).permit(:first_name, :last_name)
  # end

end
