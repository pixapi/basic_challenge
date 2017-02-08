class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    student = Student.new(student_params)
    if student.save
      flash[:success] = "Student Created!"
      redirect_to students_path
    else
      flash.now[:warning] = student.errors.full_messages.join(", ")
      render :new
    end
  end

  private

  def student_params
    params.require(:student).permit(:name)
  end
end
