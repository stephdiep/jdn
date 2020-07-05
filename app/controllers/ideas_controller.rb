class IdeasController < ApplicationController
  before_action :new_idea, only: [:index, :create]
  def index
    @all_ideas = Idea.all
  end

  def create
    if @idea.save(idea_params)
      redirect_to idees_path
    else
      flash.alert = "Il y a eu un petit pépin..."
      redirect_to idees_path
    end
  end

  private
  def new_idea
    @idea = Idea.new
  end

  def idea_params
    params.require(:idea).permit(:message)
  end
end
