class TodosController < ApplicationController
  access user: :all
  before_action :set_todo, only: [:show, :edit, :update, :destroy]
  
  def index
    @todos = Todo.where("user_id = ?", current_user.id)
  end

  def new
  	@todo = Todo.new
  end

  def show
  end

  def edit
  end

  def create
    @todo = Todo.new(todo_params.merge(:user_id => current_user.id))

  	if @todo.save
  	  redirect_to @todo
  	else
  	  render :new
  	end
  end

  def update
  	if @todo.update(todo_params)
      redirect_to @todo
    else
      render :edit
    end
  end

  def destroy
  	@todo.destroy
  	redirect_to todos_path
  end

  def delete_all
  	#binding.pry
  	@todos = Todo.where("user_id = ?", current_user.id).delete_all
  	redirect_to todos_path
  end

  private
    def todo_params
      params.require(:todo).permit(:title, :description, :avatar)
    end

    def set_todo
      @todo = Todo.find(params[:id])
    end

end
