class ActivitiesController < ApplicationController
  before_action :authenticate_user!

def create
  @task = Task.find(params[:task_id])
  @activity = Activity.new(task: @task, user: current_user)
    if @activity.save
      redirect_to tasks_path, notice: 'La tarea ha sido realizada'
    else
      redirect_to tasks_path, alert: 'La tarea aun no ha sido realizada'
    end
  end 
end
