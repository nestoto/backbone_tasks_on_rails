class TodosController < ApplicationController
  respond_to :json

  def index
    render :json => Todo.all
  end

  def show
    todo = Todo.find(params[:id])
    render :json => todo
  end

  def create
    todo = Todo.create! params[:todo]
    render :json => todo
  end

  def update
    todo = Todo.find(params[:id])
    params[:todo].delete("id")
    todo.update_attributes! params[:todo]
    render :json => todo
  end

  def destroy
    todo = Todo.find(params[:id])
    todo.destroy
    render :json => todo
  end
end