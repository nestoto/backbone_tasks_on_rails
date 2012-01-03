class TodosController < ApplicationController
  respond_to :json

  def index
    render :json => current_user.todos.all
  end

  def show
    todo = current_user.todos.find(params[:id])
    render :json => todo
  end

  def create
    todo = current_user.todos.create! params[:todo]
    render :json => todo
  end

  def update
    todo = current_user.todos.find(params[:id])
    params[:todo].delete("id")
    todo.update_attributes! params[:todo]
    render :json => todo
  end

  def destroy
    todo = current_user.todos.find(params[:id])
    todo.destroy
    render :json => todo
  end
end