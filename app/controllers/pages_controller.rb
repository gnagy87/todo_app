class PagesController < ApplicationController
  def index
  	if current_user
  	  @user = User.find(current_user.id)
  	else
  	  render :index
  	end
  end

  def all_todos
  	@todos = Todo.all
  end
end
