class ContestsController < ApplicationController
 
 def contestsof

  @brand_id = params[:brand_id]
  @brand = Brand.find(@brand_id)
  @contests = @brand.contests
   
 end

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
    params.require(:contest).permit( :photo, :description , :minidesc, :fechainicio, :fechatermino, :brand_id )
  end
end