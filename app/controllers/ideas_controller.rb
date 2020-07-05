class IdeasController < ApplicationController
  def index
    @all_ideas = Idea.all
    @idea = Idea.new
  end

  def create
    @idea = Idea.new(idea_params)

    if @idea.save
      redirect_to idees_path
    else
      flash.alert = "Il y a eu un petit pépin..."
      redirect_to idees_path
    end
  end

  private
  def idea_params
    params.require(:idea).permit(:message)
  end
end
