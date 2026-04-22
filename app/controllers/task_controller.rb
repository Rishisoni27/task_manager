class TaskController < ApplicationController
  def create 
    task = Task.new(title: params[:title],
     description:params[:description],
    status: params[:status] )
    
    if task.save 
    render plain: "Task compeated "
    else 
      render plain: task.errors.full_messages.join(", ")
    end
 end
 def index
  @task = Task.all
 end 

 def update
  task =Task.find(params[:id])
  task.update(title: "Updated Task")
  render plain: "updated"
 end
  def destroy
  task =Task.find(params[:id])
  task.destroy
  render plain: "Deleted "
  end 
end 