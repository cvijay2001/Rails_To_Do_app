class TasksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = current_user.tasks.sort_by(&:priority_score).reverse

    # @tasks = current_user.tasks.sort_by { |task| task.priority_score }
  end

  def show
    @task.destroy
    redirect_to tasks_url, notice: 'Task was successfully destroyed.'
  end

  def new
    @task = current_user.tasks.build
  end

  def create
    @task = current_user.tasks.build(task_params)
    # Ensure status is set to false explicitly if not provided
    @task.status = 0

    if @task.save
      # redirect_to @task, notice: 'Task was successfully created.'
      redirect_to tasks_path, notice: 'Task was successfully created.'
    else
      render :new
    end
  end


  def edit
  end

  def update
    if @task.update(task_params)
      puts (task_params)
      # redirect_to @task, notice: 'Task was successfully updated.'
      redirect_to tasks_path, notice: 'Task was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    puts "destroy---------------------------------------------------------------------"
    @task.destroy
    redirect_to tasks_url, notice: 'Task was successfully destroyed.'
  end

  def status_update

    @task = Task.find(params[:id])
    puts ("l-------------------------------------------------#{params[:status].class}")
    new_status = params[:status].to_i
    if @task.update(status: new_status)
      redirect_to tasks_path, notice: 'Task status updated successfully.'
    else
      flash.now[:alert] = 'Failed to update task status.'
      render :index  # Assuming you render the index view with the form again
    end
  end

  private

  # Strong params if needed
  def task_params
    params.require(:task).permit(:status) # adjust as per your Task model attributes
  end


  private

  def set_task
    @task = current_user.tasks.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :description, :due_date, :importance, :status)
  end
  def task_params_status
    params.require(:task).permit(:status)
  end
end
