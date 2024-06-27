module Admin
  class DashboardController < ApplicationController
    before_action :authenticate_user!
    before_action :authorize_admin!
    before_action :set_task, only: [:edit_task, :update_task, :destroy_task]

    def index
      @users = User.all
      puts ("all users #{@users}")
    end

    def user_tasks
      @user = User.find(params[:id])
      @tasks = @user.tasks.order(:due_date)
    end

    def edit_task
      @user = @task.user
    end

    def update_task
      if @task.update(task_params)
        redirect_to admin_user_tasks_path(@task.user), notice: 'Task was successfully updated.'
      else
        render :edit_task
      end
    end

    def destroy_task
      @task = Task.find(params[:id])
      @user = @task.user
      @task.destroy
      redirect_to admin_user_tasks_path(@user), notice: 'Task was successfully deleted.'
    end

    private

    def authorize_admin!
      redirect_to root_path, alert: 'Access denied!' unless current_user.admin?
    end

    def set_task
      @task = Task.find(params[:id])
    end

    def task_params
      params.require(:task).permit(:title, :description, :due_date)
    end
  end
end
