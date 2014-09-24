class ContestsController < ApplicationController
 def new
   @contest = Contest.new
  end

  def show
    @contest = Contest.find(params[:id])
  end

  def index
    @contests = Contest.all
  end

  def create
    @contest = Contest.new(post_params)

    @contest.save
    redirect_to @contest
  end

  private
  def contest_params
    params.require(:contest).permit(:title, :photo, :text)
  end
end