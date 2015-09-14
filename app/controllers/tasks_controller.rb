class TasksController < ApplicationController
  before_action :authenticate_user!

  load_and_authorize_resource

  def new
    @task = Task.new
  end

  def create
    @task = Task.new task_params
    @task.user_id = current_user.id
    @task.save
    redirect_to tasks_path
  end

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
    #byebug
    #redirect_to root_path unless can? :read, @task
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update! task_params
    redirect_to tasks_path
  end

  def destroy
    Task.find(params[:id]).destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit :title, :description, :priority, :due_date, :complete 
  end

  
end
