class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(name: params[:course][:name], price: params[:course][:price], online: params[:course][:online])
    @course.save
    if @course.errors.any?
      render 'new'
    else
      redirect_to @course
    end
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.update(params[:id], name: params[:course][:name], price: params[:course][:price], online: params[:course][:online])
    if @course.errors.any?
      render 'edit'
    else
      redirect_to @course
    end
  end

  def show
    @course = Course.find(params[:id])
  end

  def destroy
    Course.find(params[:id]).destroy
    redirect_to courses_path
  end
end
