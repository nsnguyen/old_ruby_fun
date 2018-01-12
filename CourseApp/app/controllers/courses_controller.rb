class CoursesController < ApplicationController
  
  def show
    @course = Course.find(params[:id])
  end
  
  def index
    @courses = Course.take(Course.count)
  end
  
  def create
    Person.create( params.require(:course).permit(:department,:number,:title,:size,:hours))
    redirect_to "/courses"
  end
  
  def destroy
    Course.find(params[:id]).destroy
    redirect_to "/courses"
  end
  
  def edit
    @course = Course.find(params[:id])
  end
  
  def update
    @course = Course.find(params[:id])
    @course.update_attributes(params.require(:course).permit(:department,:number,:title,:size,:hours))
    redirect_to "/courses/#{@course.id}"
  end
  
end
