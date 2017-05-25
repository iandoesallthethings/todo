class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.create(todo_params)
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
