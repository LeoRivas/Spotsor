class BrandsController <ApplicationController

  	

  def new
	 @brand = Brand.new
  end

  def show
    @brand = Brand.find(params[:id])
    @contests = @brand.contests
    
  end

  def index
    @brands = Brand.all
  end

  def create
    @brand = Brand.new(post_params)

    @brand.save
    redirect_to @brand
  end

  private
  def brand_params
    params.require(:brand).permit( :logo, :name)
  end
end
