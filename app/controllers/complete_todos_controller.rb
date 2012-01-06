class CompleteTodosController < ApplicationController
  def index
    @allcomplete = current_user.complete_todos.all
  end

end
