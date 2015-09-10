class TasksController < ApplicationController
  def new
    @task = Task.new
  end

  def create
    @task = Task.new (task_params)
    @task.save
  end

  def index
    @tasks = Task.all
  end

  def show

  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private

  def task_params
    parms.require(:task).permit (:title, :description, :priority, :due_date, :complete)
  end

  
end
