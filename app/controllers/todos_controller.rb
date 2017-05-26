class TodosController < ApplicationController
  before_action :authenticate

  def index
    @todos = Todo.where(email: current_email)
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.create(todo_params.merge(email: current_email))
    if @todo.save
      redirect_to todos_path
    else
      redirect_to new_todo_path, alert: 'Error: todo must have a title.'
    end
  end

  private

  def todo_params
    params.require(:todo).permit(:title)
  end
end
